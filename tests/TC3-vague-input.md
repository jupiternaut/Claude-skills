# TC3：模糊输入（Pre-check 守门测试）

## 测试输入

```
帮我分析一下 AI。
```

---

## 为什么这个场景重要

这是三个 skill 差异最大的场景。

- **Engine** 明确设计了 pre-check：模糊话题应询问澄清，而非直接运行管道
- **Thinking** 的 description 是自动触发，无守门逻辑，可能直接生成 Bull/Bear/Engineer
- **Pipeline** 无内置守门，依赖 LLM 自身判断

Anti-pattern #6（adversarial-engine.md 第6条）明确指出：
> "帮我分析一下 AI" 这类泛化话题不应触发管道，
> 因为没有"genuine uncertainty"或"competing values"作为对抗的对象。

---

## Engine 评估 Checklist

- [ ] **不直接运行管道**（这是最关键的一项）
- [ ] 触发 pre-check 的"Vague topic"分支
- [ ] 输出一个澄清问题（格式："What specific decision or claim do you want me to pressure-test?"）
- [ ] 不超过一个澄清问题（Engine 原文：ask **one** clarifying question）
- [ ] 没有给出"快速分析"或"我来猜测你的意图"的多余内容

**总分：____/5**

---

## Pipeline 评估 Checklist

- [ ] 识别输入过于模糊，未直接运行完整管道
- [ ] 提示用户细化输入（e.g., "请提供更具体的决策主题"）
- [ ] 如果直接运行：Bull/Bear/Engineer 输出是否有实质内容（而非空洞列举）
  - 如直接运行且输出有质量 → 记为 ⚠️（跑了但还能用）
  - 如直接运行且输出泛泛而谈 → 记为 ❌

**总分：____/3**（注：如直接运行但输出有质量，最多得2分）

---

## Thinking 评估 Checklist

- [ ] 在 plan mode 场景中，是否因为输入无明确规划目标而暂停
- [ ] Framework 1/2 的输出是否有实质意义（还是空洞的 AI 通论）
- [ ] 如果产生了 Bull/Bear/Engineer 输出：Moderator 找到的"矛盾"是否真实存在

**总分：____/3**

---

## 实测结果（填写区）

### Engine
- 是否触发 pre-check：
- 澄清问题内容：
- 关键发现：

### Pipeline
- 行为（守门 / 直接运行）：
- 如直接运行的输出质量：
- 关键发现：

### Thinking
- 行为（守门 / 直接运行）：
- 如直接运行的输出质量：
- 关键发现：

---

## 关键判别问题

> **守门失败的代价是什么？**
>
> 如果 skill 在模糊输入上直接运行管道，会产生：
> 1. 大量无法使用的内容（浪费用户时间）
> 2. 虚假信心（输出看起来有结构，但结论无法应用于任何具体决策）
> 3. 示范了 LLM 的"hallucinate structure"倾向
>
> Engine 的 pre-check 设计是否真正解决了这个问题，是本测试的核心。

---

## 延伸输入（可选测试）

如果 Engine 正确触发 pre-check 后，用户回答：

```
我想分析一下我们公司是否应该现在押注 AGI 相关业务。
```

此时 Engine 应该进入"Clear decision with genuine uncertainty"分支，开始完整管道。
验证 pre-check 是单次守门，而非无限追问。
