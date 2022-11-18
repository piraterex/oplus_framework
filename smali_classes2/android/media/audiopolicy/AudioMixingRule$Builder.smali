.class public Landroid/media/audiopolicy/AudioMixingRule$Builder;
.super Ljava/lang/Object;
.source "AudioMixingRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioMixingRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowPrivilegedMediaPlaybackCapture:Z

.field private greylist-max-o mCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTargetMixType:I

.field private blacklist mVoiceCommunicationCaptureAllowed:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mAllowPrivilegedMediaPlaybackCapture:Z

    .line 379
    iput-boolean v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mVoiceCommunicationCaptureAllowed:Z

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    .line 386
    return-void
.end method

.method private greylist-max-o addRuleInternal(Landroid/media/AudioAttributes;Ljava/lang/Integer;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 7
    .param p1, "attrToMatch"    # Landroid/media/AudioAttributes;
    .param p2, "intProp"    # Ljava/lang/Integer;
    .param p3, "rule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 609
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 610
    invoke-static {p3}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisPlayerRule(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 611
    iput v2, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    goto :goto_0

    .line 612
    :cond_0
    invoke-static {p3}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisRecorderRule(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    iput v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    goto :goto_0

    .line 617
    :cond_1
    iput v2, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    goto :goto_0

    .line 619
    :cond_2
    invoke-static {p3}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisPlayerRule(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    if-nez v0, :cond_4

    .line 620
    :cond_3
    invoke-static {p3}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisRecorderRule(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 622
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incompatible rule for mix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_5
    :goto_0
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    monitor-enter v0

    .line 625
    :try_start_0
    iget-object v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 626
    .local v1, "crIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;>;"
    const v2, -0x8001

    and-int v3, p3, v2

    .line 627
    .local v3, "match_rule":I
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 628
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    .line 630
    .local v4, "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    iget v5, v4, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    and-int/2addr v5, v2

    if-eq v5, v3, :cond_6

    .line 631
    goto :goto_1

    .line 633
    :cond_6
    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_2

    .line 678
    :sswitch_0
    iget v5, v4, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mIntProp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_b

    .line 679
    iget v2, v4, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    if-ne v2, p3, :cond_7

    .line 681
    monitor-exit v0

    return-object p0

    .line 685
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Contradictory rule exists for userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .end local p1    # "attrToMatch":Landroid/media/AudioAttributes;
    .end local p2    # "intProp":Ljava/lang/Integer;
    .end local p3    # "rule":I
    throw v2

    .line 664
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .restart local p1    # "attrToMatch":Landroid/media/AudioAttributes;
    .restart local p2    # "intProp":Ljava/lang/Integer;
    .restart local p3    # "rule":I
    :sswitch_1
    iget v5, v4, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mIntProp:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_b

    .line 665
    iget v2, v4, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    if-ne v2, p3, :cond_8

    .line 667
    monitor-exit v0

    return-object p0

    .line 671
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Contradictory rule exists for UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .end local p1    # "attrToMatch":Landroid/media/AudioAttributes;
    .end local p2    # "intProp":Ljava/lang/Integer;
    .end local p3    # "rule":I
    throw v2

    .line 650
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .restart local p1    # "attrToMatch":Landroid/media/AudioAttributes;
    .restart local p2    # "intProp":Ljava/lang/Integer;
    .restart local p3    # "rule":I
    :sswitch_2
    iget-object v5, v4, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v5}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v5

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v6

    if-ne v5, v6, :cond_b

    .line 651
    iget v2, v4, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    if-ne v2, p3, :cond_9

    .line 653
    monitor-exit v0

    return-object p0

    .line 657
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Contradictory rule exists for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .end local p1    # "attrToMatch":Landroid/media/AudioAttributes;
    .end local p2    # "intProp":Ljava/lang/Integer;
    .end local p3    # "rule":I
    throw v2

    .line 636
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .restart local p1    # "attrToMatch":Landroid/media/AudioAttributes;
    .restart local p2    # "intProp":Ljava/lang/Integer;
    .restart local p3    # "rule":I
    :sswitch_3
    iget-object v5, v4, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v5}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v5

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v6

    if-ne v5, v6, :cond_b

    .line 637
    iget v2, v4, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    if-ne v2, p3, :cond_a

    .line 639
    monitor-exit v0

    return-object p0

    .line 643
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Contradictory rule exists for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .end local p1    # "attrToMatch":Landroid/media/AudioAttributes;
    .end local p2    # "intProp":Ljava/lang/Integer;
    .end local p3    # "rule":I
    throw v2

    .line 691
    .end local v4    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .restart local p1    # "attrToMatch":Landroid/media/AudioAttributes;
    .restart local p2    # "intProp":Ljava/lang/Integer;
    .restart local p3    # "rule":I
    :cond_b
    :goto_2
    goto/16 :goto_1

    .line 693
    :cond_c
    sparse-switch v3, :sswitch_data_1

    .line 703
    new-instance v2, Ljava/lang/IllegalStateException;

    goto :goto_4

    .line 700
    :sswitch_4
    iget-object v2, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    new-instance v4, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    invoke-direct {v4, p2, p3}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;-><init>(Ljava/lang/Integer;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    goto :goto_3

    .line 696
    :sswitch_5
    iget-object v2, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    new-instance v4, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    invoke-direct {v4, p1, p3}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;-><init>(Landroid/media/AudioAttributes;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    nop

    .line 705
    .end local v1    # "crIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;>;"
    .end local v3    # "match_rule":I
    :goto_3
    monitor-exit v0

    .line 706
    return-object p0

    .line 703
    .restart local v1    # "crIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;>;"
    .restart local v3    # "match_rule":I
    :goto_4
    const-string v4, "Unreachable code in addRuleInternal()"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .end local p1    # "attrToMatch":Landroid/media/AudioAttributes;
    .end local p2    # "intProp":Ljava/lang/Integer;
    .end local p3    # "rule":I
    throw v2

    .line 705
    .end local v1    # "crIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;>;"
    .end local v3    # "match_rule":I
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .restart local p1    # "attrToMatch":Landroid/media/AudioAttributes;
    .restart local p2    # "intProp":Ljava/lang/Integer;
    .restart local p3    # "rule":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x4 -> :sswitch_4
        0x8 -> :sswitch_4
    .end sparse-switch
.end method

.method private greylist-max-o checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3
    .param p1, "rule"    # I
    .param p2, "property"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 566
    if-eqz p2, :cond_4

    .line 569
    invoke-static {p1}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisValidRule(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 572
    const v0, -0x8001

    and-int/2addr v0, p1

    .line 573
    .local v0, "match_rule":I
    invoke-static {v0}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisAudioAttributeRule(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 574
    instance-of v1, p2, Landroid/media/AudioAttributes;

    if-eqz v1, :cond_0

    .line 577
    move-object v1, p2

    check-cast v1, Landroid/media/AudioAttributes;

    invoke-direct {p0, v1, v2, p1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRuleInternal(Landroid/media/AudioAttributes;Ljava/lang/Integer;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v1

    return-object v1

    .line 575
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid AudioAttributes argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 580
    :cond_1
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 583
    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-direct {p0, v2, v1, p1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRuleInternal(Landroid/media/AudioAttributes;Ljava/lang/Integer;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v1

    return-object v1

    .line 581
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Integer argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 570
    .end local v0    # "match_rule":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null argument for mixing rule"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3
    .param p1, "rule"    # I
    .param p2, "property"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 449
    invoke-static {p1}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisValidSystemApiRule(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-direct {p0, p1, p2}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    return-object v0

    .line 450
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addRule(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3
    .param p1, "attrToMatch"    # Landroid/media/AudioAttributes;
    .param p2, "rule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 400
    invoke-static {p2}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisValidAttributesSystemApiRule(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-direct {p0, p2, p1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    return-object v0

    .line 401
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o addRuleFromParcel(Landroid/os/Parcel;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 710
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 711
    .local v0, "rule":I
    const v1, -0x8001

    and-int/2addr v1, v0

    .line 712
    .local v1, "match_rule":I
    const/4 v2, 0x0

    .line 713
    .local v2, "attr":Landroid/media/AudioAttributes;
    const/4 v3, 0x0

    .line 714
    .local v3, "intProp":Ljava/lang/Integer;
    sparse-switch v1, :sswitch_data_0

    .line 725
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 726
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal rule value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in parcel"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 721
    :sswitch_0
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object v3, v4

    .line 722
    goto :goto_0

    .line 717
    :sswitch_1
    sget-object v4, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/media/AudioAttributes;

    .line 718
    nop

    .line 728
    :goto_0
    invoke-direct {p0, v2, v3, v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRuleInternal(Landroid/media/AudioAttributes;Ljava/lang/Integer;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v4

    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist allowPrivilegedPlaybackCapture(Z)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 0
    .param p1, "allow"    # Z

    .line 500
    iput-boolean p1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mAllowPrivilegedMediaPlaybackCapture:Z

    .line 501
    return-object p0
.end method

.method public whitelist build()Landroid/media/audiopolicy/AudioMixingRule;
    .locals 7

    .line 737
    new-instance v6, Landroid/media/audiopolicy/AudioMixingRule;

    iget v1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    iget-object v2, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mCriteria:Ljava/util/ArrayList;

    iget-boolean v3, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mAllowPrivilegedMediaPlaybackCapture:Z

    iget-boolean v4, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mVoiceCommunicationCaptureAllowed:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/media/audiopolicy/AudioMixingRule;-><init>(ILjava/util/ArrayList;ZZLandroid/media/audiopolicy/AudioMixingRule-IA;)V

    return-object v6
.end method

.method public whitelist excludeMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3
    .param p1, "rule"    # I
    .param p2, "property"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 479
    invoke-static {p1}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisValidSystemApiRule(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const v0, 0x8000

    or-int/2addr v0, p1

    invoke-direct {p0, v0, p2}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    return-object v0

    .line 480
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist excludeRule(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3
    .param p1, "attrToMatch"    # Landroid/media/AudioAttributes;
    .param p2, "rule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 428
    invoke-static {p2}, Landroid/media/audiopolicy/AudioMixingRule;->-$$Nest$smisValidAttributesSystemApiRule(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    const v0, 0x8000

    or-int/2addr v0, p2

    invoke-direct {p0, v0, p1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->checkAddRuleObjInternal(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    return-object v0

    .line 429
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rule value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTargetMixRole(I)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 3
    .param p1, "mixRole"    # I

    .line 546
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 547
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal argument for mix role"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Builder setTargetMixRole "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioMixingRule"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    if-ne p1, v0, :cond_2

    .line 552
    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mTargetMixType:I

    .line 553
    return-object p0
.end method

.method public blacklist voiceCommunicationCaptureAllowed(Z)Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .locals 0
    .param p1, "allowed"    # Z

    .line 517
    iput-boolean p1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder;->mVoiceCommunicationCaptureAllowed:Z

    .line 518
    return-object p0
.end method
