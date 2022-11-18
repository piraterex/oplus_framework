.class public final Landroid/service/notification/ZenPolicy$Builder;
.super Ljava/lang/Object;
.source "ZenPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mZenPolicy:Landroid/service/notification/ZenPolicy;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    new-instance v0, Landroid/service/notification/ZenPolicy;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    .line 422
    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/notification/ZenPolicy;)V
    .locals 1
    .param p1, "policy"    # Landroid/service/notification/ZenPolicy;

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    if-eqz p1, :cond_0

    .line 429
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    goto :goto_0

    .line 431
    :cond_0
    new-instance v0, Landroid/service/notification/ZenPolicy;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    .line 433
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;
    .locals 3
    .param p1, "allow"    # Z

    .line 631
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 632
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 631
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 633
    return-object p0
.end method

.method public whitelist allowAllSounds()Landroid/service/notification/ZenPolicy$Builder;
    .locals 3

    .line 446
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 447
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 446
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityMessages(Landroid/service/notification/ZenPolicy;I)V

    .line 450
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityCalls(Landroid/service/notification/ZenPolicy;I)V

    .line 451
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmConversationSenders(Landroid/service/notification/ZenPolicy;I)V

    .line 452
    return-object p0
.end method

.method public whitelist allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;
    .locals 3
    .param p1, "audienceType"    # I

    .line 597
    const/4 v0, 0x3

    if-nez p1, :cond_0

    .line 598
    invoke-virtual {p0, v0}, Landroid/service/notification/ZenPolicy$Builder;->unsetPriorityCategory(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    return-object v0

    .line 601
    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x2

    if-ne p1, v1, :cond_1

    .line 602
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 603
    :cond_1
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    if-eq p1, v2, :cond_3

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 607
    :cond_2
    return-object p0

    .line 605
    :cond_3
    :goto_0
    iget-object v2, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 610
    :goto_1
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, p1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityCalls(Landroid/service/notification/ZenPolicy;I)V

    .line 611
    return-object p0
.end method

.method public blacklist allowCategory(IZ)Landroid/service/notification/ZenPolicy$Builder;
    .locals 0
    .param p1, "category"    # I
    .param p2, "allow"    # Z

    .line 662
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 670
    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 671
    goto :goto_0

    .line 667
    :pswitch_2
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 668
    goto :goto_0

    .line 664
    :pswitch_3
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 665
    goto :goto_0

    .line 679
    :pswitch_4
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    goto :goto_0

    .line 676
    :pswitch_5
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 677
    goto :goto_0

    .line 673
    :pswitch_6
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 674
    nop

    .line 682
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;
    .locals 3
    .param p1, "audienceType"    # I

    .line 549
    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 550
    invoke-virtual {p0, v0}, Landroid/service/notification/ZenPolicy$Builder;->unsetPriorityCategory(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    return-object v0

    .line 553
    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne p1, v1, :cond_1

    .line 554
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 555
    :cond_1
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 559
    :cond_2
    return-object p0

    .line 557
    :cond_3
    :goto_0
    iget-object v2, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 562
    :goto_1
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, p1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmConversationSenders(Landroid/service/notification/ZenPolicy;I)V

    .line 563
    return-object p0
.end method

.method public whitelist allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;
    .locals 3
    .param p1, "allow"    # Z

    .line 536
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 537
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 536
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 538
    return-object p0
.end method

.method public whitelist allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;
    .locals 3
    .param p1, "allow"    # Z

    .line 642
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 643
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 642
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 644
    return-object p0
.end method

.method public whitelist allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;
    .locals 3
    .param p1, "audienceType"    # I

    .line 573
    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 574
    invoke-virtual {p0, v0}, Landroid/service/notification/ZenPolicy$Builder;->unsetPriorityCategory(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    return-object v0

    .line 577
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 578
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 579
    :cond_1
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_3

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 583
    :cond_2
    return-object p0

    .line 581
    :cond_3
    :goto_0
    iget-object v2, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v2}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 586
    :goto_1
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, p1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityMessages(Landroid/service/notification/ZenPolicy;I)V

    .line 587
    return-object p0
.end method

.method public whitelist allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;
    .locals 3
    .param p1, "allow"    # Z

    .line 526
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 527
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 526
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 528
    return-object p0
.end method

.method public whitelist allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;
    .locals 3
    .param p1, "allow"    # Z

    .line 620
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 621
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 620
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 622
    return-object p0
.end method

.method public whitelist allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;
    .locals 3
    .param p1, "allow"    # Z

    .line 652
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 653
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 652
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 654
    return-object p0
.end method

.method public whitelist build()Landroid/service/notification/ZenPolicy;
    .locals 1

    .line 439
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    return-object v0
.end method

.method public whitelist disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;
    .locals 3

    .line 463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 464
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityMessages(Landroid/service/notification/ZenPolicy;I)V

    .line 467
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityCalls(Landroid/service/notification/ZenPolicy;I)V

    .line 468
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmConversationSenders(Landroid/service/notification/ZenPolicy;I)V

    .line 469
    return-object p0
.end method

.method public whitelist hideAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;
    .locals 3

    .line 486
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 487
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public whitelist showAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;
    .locals 3

    .line 476
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 477
    iget-object v1, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public whitelist showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;
    .locals 3
    .param p1, "show"    # Z

    .line 729
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 730
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 729
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 731
    return-object p0
.end method

.method public whitelist showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;
    .locals 3
    .param p1, "show"    # Z

    .line 690
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 691
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 690
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 692
    return-object p0
.end method

.method public whitelist showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;
    .locals 3
    .param p1, "show"    # Z

    .line 739
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 740
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 739
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 741
    return-object p0
.end method

.method public whitelist showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;
    .locals 3
    .param p1, "show"    # Z

    .line 750
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 751
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 750
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 752
    return-object p0
.end method

.method public whitelist showLights(Z)Landroid/service/notification/ZenPolicy$Builder;
    .locals 3
    .param p1, "show"    # Z

    .line 700
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 701
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 700
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 702
    return-object p0
.end method

.method public whitelist showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;
    .locals 3
    .param p1, "show"    # Z

    .line 709
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 710
    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 709
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 711
    return-object p0
.end method

.method public whitelist showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;
    .locals 3
    .param p1, "show"    # Z

    .line 719
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 720
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 719
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 721
    return-object p0
.end method

.method public blacklist showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;
    .locals 0
    .param p1, "effect"    # I
    .param p2, "show"    # Z

    .line 761
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 781
    :pswitch_0
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;

    goto :goto_0

    .line 778
    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 779
    goto :goto_0

    .line 775
    :pswitch_2
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 776
    goto :goto_0

    .line 772
    :pswitch_3
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 773
    goto :goto_0

    .line 769
    :pswitch_4
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 770
    goto :goto_0

    .line 766
    :pswitch_5
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showLights(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 767
    goto :goto_0

    .line 763
    :pswitch_6
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 764
    nop

    .line 784
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist unsetPriorityCategory(I)Landroid/service/notification/ZenPolicy$Builder;
    .locals 3
    .param p1, "category"    # I

    .line 498
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 500
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 501
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityMessages(Landroid/service/notification/ZenPolicy;I)V

    goto :goto_0

    .line 502
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 503
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmPriorityCalls(Landroid/service/notification/ZenPolicy;I)V

    goto :goto_0

    .line 504
    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 505
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->-$$Nest$fputmConversationSenders(Landroid/service/notification/ZenPolicy;I)V

    .line 508
    :cond_2
    :goto_0
    return-object p0
.end method

.method public blacklist unsetVisualEffect(I)Landroid/service/notification/ZenPolicy$Builder;
    .locals 2
    .param p1, "effect"    # I

    .line 517
    iget-object v0, p0, Landroid/service/notification/ZenPolicy$Builder;->mZenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0}, Landroid/service/notification/ZenPolicy;->-$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 518
    return-object p0
.end method
