/**
 * S8 合規自評工具
 * 多框架整合 + 動態生成
 */

(function() {
  'use strict';

  // 框架配置
  const FRAMEWORKS = {
    'nist-csf': {
      name: 'NIST CSF 2.0',
      description: '網路安全框架成熟度自評',
      jsonPath: '/assets/js/frameworks/nist-csf.json'
    },
    'gdpr': {
      name: 'GDPR',
      description: '歐盟資料保護規範合規檢核',
      jsonPath: '/assets/js/frameworks/gdpr.json'
    },
    'supply-chain': {
      name: '供應鏈安全',
      description: 'SSDF、SBOM、第三方風險評估',
      jsonPath: '/assets/js/frameworks/supply-chain.json'
    }
  };

  // 評分等級
  const SCORE_LEVELS = [
    { min: 0, max: 25, label: '初始階段', color: '#ef4444', advice: '建議優先建立基礎安全措施' },
    { min: 26, max: 50, label: '發展中', color: '#f59e0b', advice: '已有基礎，需加強系統化管理' },
    { min: 51, max: 75, label: '已定義', color: '#3b82f6', advice: '流程完善，可著重持續改進' },
    { min: 76, max: 100, label: '優化中', color: '#10b981', advice: '表現優異，維持現有水準' }
  ];

  // 主要類別
  class ComplianceTool {
    constructor(containerId) {
      this.container = document.getElementById(containerId);
      if (!this.container) return;

      this.currentFramework = null;
      this.questions = [];
      this.answers = {};
      this.storageKey = 'compliance-tool-answers';

      this.init();
    }

    async init() {
      this.loadSavedAnswers();
      this.renderFrameworkSelector();
    }

    loadSavedAnswers() {
      try {
        const saved = localStorage.getItem(this.storageKey);
        if (saved) {
          this.answers = JSON.parse(saved);
        }
      } catch (e) {
        console.warn('無法載入已儲存的答案:', e);
      }
    }

    saveAnswers() {
      try {
        localStorage.setItem(this.storageKey, JSON.stringify(this.answers));
      } catch (e) {
        console.warn('無法儲存答案:', e);
      }
    }

    renderFrameworkSelector() {
      const html = `
        <div class="compliance-section">
          <h2>選擇評估框架</h2>
          <p>請選擇您要進行的合規自評類型：</p>
          <div class="framework-grid">
            ${Object.entries(FRAMEWORKS).map(([id, fw]) => `
              <button class="framework-card" data-framework="${id}">
                <h3>${fw.name}</h3>
                <p>${fw.description}</p>
              </button>
            `).join('')}
          </div>
        </div>
        <style>
          .framework-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 1rem;
            margin-top: 1rem;
          }
          .framework-card {
            background: white;
            border: 2px solid #e2e8f0;
            border-radius: 8px;
            padding: 1.5rem;
            text-align: left;
            cursor: pointer;
            transition: all 0.2s;
          }
          .framework-card:hover {
            border-color: #2563eb;
            box-shadow: 0 4px 12px rgba(37, 99, 235, 0.15);
          }
          .framework-card h3 {
            margin: 0 0 0.5rem 0;
            color: #1e293b;
          }
          .framework-card p {
            margin: 0;
            color: #64748b;
            font-size: 0.9rem;
          }
        </style>
      `;

      this.container.innerHTML = html;

      // 綁定事件
      this.container.querySelectorAll('.framework-card').forEach(card => {
        card.addEventListener('click', () => {
          this.loadFramework(card.dataset.framework);
        });
      });
    }

    async loadFramework(frameworkId) {
      const framework = FRAMEWORKS[frameworkId];
      if (!framework) return;

      this.currentFramework = frameworkId;
      this.container.innerHTML = '<p>載入中...</p>';

      try {
        const response = await fetch(framework.jsonPath);
        if (!response.ok) throw new Error('無法載入框架資料');

        const data = await response.json();
        this.questions = data.questions;
        this.renderQuestions(framework.name, data.sections);
      } catch (e) {
        console.error('載入框架失敗:', e);
        this.container.innerHTML = `
          <div class="compliance-section">
            <p>載入失敗，請稍後再試。</p>
            <button class="compliance-btn compliance-btn-secondary" onclick="window.complianceTool.renderFrameworkSelector()">
              返回選擇
            </button>
          </div>
        `;
      }
    }

    renderQuestions(frameworkName, sections) {
      const savedAnswers = this.answers[this.currentFramework] || {};

      let html = `
        <div class="compliance-section">
          <button class="compliance-btn compliance-btn-secondary" style="margin-bottom: 1rem;" onclick="window.complianceTool.renderFrameworkSelector()">
            ← 返回選擇其他框架
          </button>
          <h2>${frameworkName} 自評</h2>
          <p>請根據貴組織的實際情況回答以下問題：</p>
        </div>
      `;

      sections.forEach((section, sIdx) => {
        html += `
          <div class="compliance-section">
            <h3>${section.name}</h3>
            ${section.description ? `<p>${section.description}</p>` : ''}
        `;

        section.questions.forEach((q, qIdx) => {
          const qId = `q-${sIdx}-${qIdx}`;
          const savedValue = savedAnswers[qId] || '';

          html += `
            <div class="compliance-question" data-question-id="${qId}">
              <label>${q.text}</label>
              <div class="compliance-options">
                ${q.options.map((opt, oIdx) => `
                  <label>
                    <input type="radio" name="${qId}" value="${opt.value}" ${savedValue == opt.value ? 'checked' : ''}>
                    ${opt.label}
                  </label>
                `).join('')}
              </div>
            </div>
          `;
        });

        html += '</div>';
      });

      html += `
        <div class="compliance-actions">
          <button class="compliance-btn compliance-btn-primary" onclick="window.complianceTool.calculateScore()">
            計算分數
          </button>
          <button class="compliance-btn compliance-btn-secondary" onclick="window.complianceTool.resetAnswers()">
            重新開始
          </button>
        </div>
        <div id="compliance-result"></div>
      `;

      this.container.innerHTML = html;

      // 綁定變更事件
      this.container.querySelectorAll('input[type="radio"]').forEach(input => {
        input.addEventListener('change', () => this.onAnswerChange(input));
      });
    }

    onAnswerChange(input) {
      if (!this.answers[this.currentFramework]) {
        this.answers[this.currentFramework] = {};
      }
      this.answers[this.currentFramework][input.name] = input.value;
      this.saveAnswers();
    }

    calculateScore() {
      const inputs = this.container.querySelectorAll('input[type="radio"]:checked');
      const totalQuestions = this.container.querySelectorAll('.compliance-question').length;

      if (inputs.length < totalQuestions) {
        alert(`請回答所有問題（已完成 ${inputs.length}/${totalQuestions}）`);
        return;
      }

      let totalScore = 0;
      let maxScore = 0;

      inputs.forEach(input => {
        totalScore += parseInt(input.value, 10);
        maxScore += 100; // 假設每題最高 100 分
      });

      const percentage = Math.round((totalScore / maxScore) * 100);
      const level = SCORE_LEVELS.find(l => percentage >= l.min && percentage <= l.max);

      this.renderResult(percentage, level, inputs.length);
    }

    renderResult(score, level, answeredCount) {
      const resultDiv = document.getElementById('compliance-result');

      resultDiv.innerHTML = `
        <div class="compliance-result">
          <h3>評估結果</h3>
          <div class="compliance-score" style="color: ${level.color}">
            ${score}%
          </div>
          <div class="compliance-score-label">
            成熟度等級：<strong style="color: ${level.color}">${level.label}</strong>
          </div>
          <p style="text-align: center; margin-top: 1rem; color: #4b5563;">
            ${level.advice}
          </p>
          <div class="compliance-actions">
            <button class="compliance-btn compliance-btn-primary" onclick="window.complianceTool.downloadReport()">
              下載報告
            </button>
            <button class="compliance-btn compliance-btn-secondary" onclick="window.complianceTool.renderFrameworkSelector()">
              評估其他框架
            </button>
          </div>
        </div>
      `;

      resultDiv.scrollIntoView({ behavior: 'smooth' });
    }

    resetAnswers() {
      if (confirm('確定要清除所有答案嗎？')) {
        if (this.currentFramework && this.answers[this.currentFramework]) {
          delete this.answers[this.currentFramework];
          this.saveAnswers();
        }
        this.loadFramework(this.currentFramework);
      }
    }

    downloadReport() {
      const framework = FRAMEWORKS[this.currentFramework];
      const inputs = this.container.querySelectorAll('input[type="radio"]:checked');

      let totalScore = 0;
      let maxScore = 0;
      const answers = [];

      inputs.forEach(input => {
        const question = input.closest('.compliance-question');
        const label = question.querySelector('label').textContent;
        const optionLabel = input.parentElement.textContent.trim();

        totalScore += parseInt(input.value, 10);
        maxScore += 100;

        answers.push({
          question: label,
          answer: optionLabel,
          score: input.value
        });
      });

      const percentage = Math.round((totalScore / maxScore) * 100);
      const level = SCORE_LEVELS.find(l => percentage >= l.min && percentage <= l.max);
      const date = new Date().toISOString().split('T')[0];

      // 產生 Markdown 報告
      let report = `# ${framework.name} 合規自評報告\n\n`;
      report += `**評估日期**：${date}\n\n`;
      report += `**整體分數**：${percentage}%\n\n`;
      report += `**成熟度等級**：${level.label}\n\n`;
      report += `**建議**：${level.advice}\n\n`;
      report += `---\n\n`;
      report += `## 詳細答案\n\n`;

      answers.forEach((a, i) => {
        report += `### ${i + 1}. ${a.question}\n`;
        report += `- **回答**：${a.answer}\n`;
        report += `- **分數**：${a.score}\n\n`;
      });

      report += `---\n\n`;
      report += `*此報告由 Risk & Responsibility Intelligence 合規自評工具自動產生*\n`;

      // 下載
      const blob = new Blob([report], { type: 'text/markdown' });
      const url = URL.createObjectURL(blob);
      const a = document.createElement('a');
      a.href = url;
      a.download = `${this.currentFramework}-assessment-${date}.md`;
      document.body.appendChild(a);
      a.click();
      document.body.removeChild(a);
      URL.revokeObjectURL(url);
    }
  }

  // 頁面載入時初始化
  document.addEventListener('DOMContentLoaded', function() {
    const container = document.getElementById('compliance-tool');
    if (container) {
      window.complianceTool = new ComplianceTool('compliance-tool');
    }
  });
})();
