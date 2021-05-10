---
layout: page
title: 机器学习词汇表
---

 
> 声明：本份词汇表在不断完善中，如果您有任何修改建议、看法、批评，可[**在线编辑**](https://github.com/atutongxue/atutongxue.github.io/edit/main/_blocks/machine-learning-glossary.md)。


## A/B testing  A/B测试


## 准确度 accuracy
分类模型能够判断正确的分数。 在多分类中，精度被定义如下：
精度 = 正确数/样本数

在二分类中，精度有如下定义：
精度 = TP+TN/Total 

## 动作 action
在强化学习中， 是agent在环境状态之间转变的机制。 代理通过策略选择动作。

## 激活函数 activation function
首先它是个函数，例如ReLU或者sigmoid，它吃掉前一层输入的总和，然后生成一个值（一般是非线性的），输出给下一层。

## 主动学习 active learning
一种训练方法，算法从他学习的数据中，选择其中的一些。在“标记样本”很罕见或者花费昂贵时，主动学习非常有价值。 “主动学习算法”有选择地寻找它需要学习的特定范围的样本，而不是盲目地寻找各种各样的标记示例。

## AdaGrad
一个复杂的梯度下降函数，它重新拉伸每个参数的梯度，有效地给与每个参数一个独立的学习率。 完整的解释，看这篇[论文](http://www.jmlr.org/papers/volume12/duchi11a/duchi11a.pdf)。

## 代理 agent 
在强化学习中，从环境状态变化中获取的，用策略来最大化预期回报的实体

## 聚集聚类
看 hierarchical clustering.

## AR
[增强现实]()的缩写。

## area under the PR curve
看PR AUC

## area under the ROC curve
看AUC

## 人工通用智能 artificial general intelligence
一种非人类的机制，展示了广泛的问题解决能力、创造能力、适应能力。 例如，一个展示出人工通用只能的程序，可以翻译文本，创作交响曲，而且擅长开发尚未被发明的游戏。


## 人工智能 artificial intelligence
一个非人类的程序或模型，能够解决复杂任务。 例如能够翻译文本，或者能够从放射影像图中识别疾病的程序或模型，都具有人工智能。

正式地来说，机器学习只是人工智能地一个子领域。 然而， 近年来一些组织已经开始互换使用这两个词语。




## 示例 example
数据集里的一行。 1个示例包含一个或多个[特征](#特征-feature)，而且可能包含标记。 可以看看[标记示例](标记示例-labeled-example)和[非标记示例-unlabeled-example]。

## 特征 feature
被用来作[预测](#预测-predictions)的一个输入变量。

## 预测 predictions
当输入给模型一个[示例](#示例-example)，模型给的输出。
 




---
参考资料
- [Machine Learning Glossary](https://developers.google.com/machine-learning/glossary)
