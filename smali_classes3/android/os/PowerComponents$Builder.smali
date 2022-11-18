.class final Landroid/os/PowerComponents$Builder;
.super Ljava/lang/Object;
.source "PowerComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist POWER_MODEL_UNINITIALIZED:B = -0x1t


# instance fields
.field private final blacklist mData:Landroid/os/BatteryConsumer$BatteryConsumerData;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmData(Landroid/os/PowerComponents$Builder;)Landroid/os/BatteryConsumer$BatteryConsumerData;
    .locals 0

    iget-object p0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V
    .locals 11
    .param p1, "data"    # Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 466
    iget-object v0, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[[Landroid/os/BatteryConsumer$Key;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 467
    .local v4, "keys":[Landroid/os/BatteryConsumer$Key;
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 468
    .local v7, "key":Landroid/os/BatteryConsumer$Key;
    iget v8, v7, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 469
    iget-object v8, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v10, v7, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v8, v10, v9}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putInt(II)V

    .line 467
    .end local v7    # "key":Landroid/os/BatteryConsumer$Key;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 466
    .end local v4    # "keys":[Landroid/os/BatteryConsumer$Key;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 473
    :cond_2
    return-void
.end method

.method private blacklist addPowerAndDuration(Landroid/os/BatteryConsumer$BatteryConsumerData;)V
    .locals 13
    .param p1, "otherData"    # Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 538
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    iget-object v1, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ne v0, v1, :cond_b

    .line 546
    const/16 v0, 0x11

    .local v0, "componentId":I
    :goto_0
    if-ltz v0, :cond_9

    .line 548
    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[[Landroid/os/BatteryConsumer$Key;

    aget-object v1, v1, v0

    .line 549
    .local v1, "keys":[Landroid/os/BatteryConsumer$Key;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_8

    aget-object v5, v1, v4

    .line 550
    .local v5, "key":Landroid/os/BatteryConsumer$Key;
    const/4 v6, 0x0

    .line 551
    .local v6, "otherKey":Landroid/os/BatteryConsumer$Key;
    iget-object v7, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v7, v7, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[[Landroid/os/BatteryConsumer$Key;

    aget-object v7, v7, v0

    array-length v8, v7

    move v9, v3

    :goto_2
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 552
    .local v10, "aKey":Landroid/os/BatteryConsumer$Key;
    invoke-virtual {v10, v5}, Landroid/os/BatteryConsumer$Key;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 553
    move-object v6, v10

    .line 554
    goto :goto_3

    .line 551
    .end local v10    # "aKey":Landroid/os/BatteryConsumer$Key;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 558
    :cond_1
    :goto_3
    if-nez v6, :cond_2

    .line 559
    goto :goto_5

    .line 562
    :cond_2
    iget-object v7, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v8, v5, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    iget-object v9, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v10, v5, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    .line 563
    invoke-virtual {v9, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v9

    iget v11, v6, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    .line 564
    invoke-virtual {p1, v11}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v11

    add-double/2addr v9, v11

    .line 562
    invoke-virtual {v7, v8, v9, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    .line 565
    iget-object v7, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v8, v5, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    iget-object v9, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v10, v5, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    .line 566
    invoke-virtual {v9, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v9

    iget v11, v6, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    .line 567
    invoke-virtual {p1, v11}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v11

    add-long/2addr v9, v11

    .line 565
    invoke-virtual {v7, v8, v9, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    .line 569
    iget v7, v5, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 570
    goto :goto_5

    .line 573
    :cond_3
    const/4 v7, 0x0

    .line 574
    .local v7, "undefined":Z
    iget v9, v6, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    if-ne v9, v8, :cond_4

    .line 575
    const/4 v7, 0x1

    goto :goto_4

    .line 577
    :cond_4
    iget-object v9, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v10, v5, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v9, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getInt(I)I

    move-result v9

    .line 578
    .local v9, "powerModel":I
    iget v10, v6, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {p1, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getInt(I)I

    move-result v10

    .line 579
    .local v10, "otherPowerModel":I
    if-ne v9, v8, :cond_5

    .line 580
    iget-object v8, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v11, v5, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v8, v11, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putInt(II)V

    goto :goto_4

    .line 581
    :cond_5
    if-eq v9, v10, :cond_6

    if-eq v10, v8, :cond_6

    .line 583
    const/4 v7, 0x1

    .line 587
    .end local v9    # "powerModel":I
    .end local v10    # "otherPowerModel":I
    :cond_6
    :goto_4
    if-eqz v7, :cond_7

    .line 588
    iget-object v8, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v9, v5, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v8, v9, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putInt(II)V

    .line 549
    .end local v5    # "key":Landroid/os/BatteryConsumer$Key;
    .end local v6    # "otherKey":Landroid/os/BatteryConsumer$Key;
    .end local v7    # "undefined":Z
    :cond_7
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 547
    .end local v1    # "keys":[Landroid/os/BatteryConsumer$Key;
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 594
    .end local v0    # "componentId":I
    :cond_9
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_a

    .line 595
    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomConsumedPowerColumn:I

    add-int/2addr v1, v0

    .line 596
    .local v1, "powerColumnIndex":I
    iget-object v2, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomConsumedPowerColumn:I

    add-int/2addr v2, v0

    .line 598
    .local v2, "otherPowerColumnIndex":I
    iget-object v3, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 599
    invoke-virtual {v3, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {p1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 598
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    .line 602
    iget-object v3, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomUsageDurationColumn:I

    add-int/2addr v3, v0

    .line 603
    .local v3, "usageColumnIndex":I
    iget-object v4, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomUsageDurationColumn:I

    add-int/2addr v4, v0

    .line 605
    .local v4, "otherDurationColumnIndex":I
    iget-object v5, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 606
    invoke-virtual {v5, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p1, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 605
    invoke-virtual {v5, v3, v6, v7}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    .line 594
    .end local v1    # "powerColumnIndex":I
    .end local v2    # "otherPowerColumnIndex":I
    .end local v3    # "usageColumnIndex":I
    .end local v4    # "otherDurationColumnIndex":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 610
    .end local v0    # "i":I
    :cond_a
    return-void

    .line 540
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of custom power components does not match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist addPowerAndDuration(Landroid/os/PowerComponents$Builder;)V
    .locals 1
    .param p1, "other"    # Landroid/os/PowerComponents$Builder;

    .line 530
    iget-object v0, p1, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    invoke-direct {p0, v0}, Landroid/os/PowerComponents$Builder;->addPowerAndDuration(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    .line 531
    return-void
.end method

.method public blacklist addPowerAndDuration(Landroid/os/PowerComponents;)V
    .locals 1
    .param p1, "other"    # Landroid/os/PowerComponents;

    .line 534
    invoke-static {p1}, Landroid/os/PowerComponents;->-$$Nest$fgetmData(Landroid/os/PowerComponents;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/PowerComponents$Builder;->addPowerAndDuration(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    .line 535
    return-void
.end method

.method public blacklist build()Landroid/os/PowerComponents;
    .locals 11

    .line 635
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->totalConsumedPowerColumnIndex:I

    invoke-virtual {p0}, Landroid/os/PowerComponents$Builder;->getTotalPower()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    .line 637
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[[Landroid/os/BatteryConsumer$Key;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 638
    .local v4, "keys":[Landroid/os/BatteryConsumer$Key;
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 639
    .local v7, "key":Landroid/os/BatteryConsumer$Key;
    iget v8, v7, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 640
    iget-object v8, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v10, v7, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v8, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getInt(I)I

    move-result v8

    if-ne v8, v9, :cond_0

    .line 641
    iget-object v8, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v9, v7, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v8, v9, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putInt(II)V

    .line 638
    .end local v7    # "key":Landroid/os/BatteryConsumer$Key;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 637
    .end local v4    # "keys":[Landroid/os/BatteryConsumer$Key;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 648
    :cond_2
    new-instance v0, Landroid/os/PowerComponents;

    invoke-direct {v0, p0}, Landroid/os/PowerComponents;-><init>(Landroid/os/PowerComponents$Builder;)V

    return-object v0
.end method

.method public blacklist getTotalPower()D
    .locals 5

    .line 617
    const-wide/16 v0, 0x0

    .line 618
    .local v0, "totalPowerMah":D
    const/4 v2, 0x0

    .local v2, "componentId":I
    :goto_0
    const/16 v3, 0x12

    if-ge v2, v3, :cond_0

    .line 620
    iget-object v3, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v4, 0x0

    .line 621
    invoke-virtual {v3, v2, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getKeyOrThrow(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v4

    iget v4, v4, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    .line 620
    invoke-virtual {v3, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v3

    add-double/2addr v0, v3

    .line 619
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 623
    .end local v2    # "componentId":I
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v2, v3, :cond_1

    .line 624
    iget-object v3, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, v3, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomConsumedPowerColumn:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v3

    add-double/2addr v0, v3

    .line 623
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 627
    .end local v2    # "i":I
    :cond_1
    return-wide v0
.end method

.method public blacklist setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/PowerComponents$Builder;
    .locals 2
    .param p1, "key"    # Landroid/os/BatteryConsumer$Key;
    .param p2, "componentPower"    # D
    .param p4, "powerModel"    # I

    .line 478
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    .line 479
    iget v0, p1, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 480
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v0, v1, p4}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putInt(II)V

    .line 482
    :cond_0
    return-object p0
.end method

.method public blacklist setConsumedPowerForCustomComponent(ID)Landroid/os/PowerComponents$Builder;
    .locals 4
    .param p1, "componentId"    # I
    .param p2, "componentPower"    # D

    .line 493
    add-int/lit16 v0, p1, -0x3e8

    .line 494
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v0, v1, :cond_0

    .line 498
    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomConsumedPowerColumn:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    .line 499
    return-object p0

    .line 495
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported custom power component ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setUsageDurationForCustomComponentMillis(IJ)Landroid/os/PowerComponents$Builder;
    .locals 4
    .param p1, "componentId"    # I
    .param p2, "componentUsageDurationMillis"    # J

    .line 518
    add-int/lit16 v0, p1, -0x3e8

    .line 519
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v0, v1, :cond_0

    .line 524
    iget-object v1, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomUsageDurationColumn:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    .line 526
    return-object p0

    .line 520
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported custom power component ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/PowerComponents$Builder;
    .locals 2
    .param p1, "key"    # Landroid/os/BatteryConsumer$Key;
    .param p2, "componentUsageDurationMillis"    # J

    .line 505
    iget-object v0, p0, Landroid/os/PowerComponents$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    .line 506
    return-object p0
.end method
