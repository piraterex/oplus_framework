.class public final Landroid/os/UidBatteryConsumer$Builder;
.super Landroid/os/BatteryConsumer$BaseBuilder;
.source "UidBatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidBatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/BatteryConsumer$BaseBuilder<",
        "Landroid/os/UidBatteryConsumer$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist PACKAGE_NAME_UNINITIALIZED:Ljava/lang/String; = ""


# instance fields
.field private final blacklist mBatteryStatsUid:Landroid/os/BatteryStats$Uid;

.field private blacklist mExcludeFromBatteryUsageStats:Z

.field private final blacklist mIsVirtualUid:Z

.field private blacklist mPackageWithHighestDrain:Ljava/lang/String;

.field private final blacklist mUid:I


# direct methods
.method public constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;I)V
    .locals 1
    .param p1, "data"    # Landroid/os/BatteryConsumer$BatteryConsumerData;
    .param p2, "uid"    # I

    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/os/UidBatteryConsumer$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/BatteryStats$Uid;I)V

    .line 217
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/BatteryStats$Uid;)V
    .locals 1
    .param p1, "data"    # Landroid/os/BatteryConsumer$BatteryConsumerData;
    .param p2, "batteryStatsUid"    # Landroid/os/BatteryStats$Uid;

    .line 212
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/os/UidBatteryConsumer$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/BatteryStats$Uid;I)V

    .line 213
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/BatteryStats$Uid;I)V
    .locals 3
    .param p1, "data"    # Landroid/os/BatteryConsumer$BatteryConsumerData;
    .param p2, "batteryStatsUid"    # Landroid/os/BatteryStats$Uid;
    .param p3, "uid"    # I

    .line 221
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/os/BatteryConsumer$BaseBuilder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;I)V

    .line 208
    const-string v1, ""

    iput-object v1, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    .line 222
    iput-object p2, p0, Landroid/os/UidBatteryConsumer$Builder;->mBatteryStatsUid:Landroid/os/BatteryStats$Uid;

    .line 223
    iput p3, p0, Landroid/os/UidBatteryConsumer$Builder;->mUid:I

    .line 224
    const/16 v1, 0x442

    if-ne p3, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/os/UidBatteryConsumer$Builder;->mIsVirtualUid:Z

    .line 225
    int-to-long v1, p3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    .line 226
    return-void
.end method


# virtual methods
.method public blacklist add(Landroid/os/UidBatteryConsumer;)Landroid/os/UidBatteryConsumer$Builder;
    .locals 5
    .param p1, "consumer"    # Landroid/os/UidBatteryConsumer;

    .line 286
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    iget-object v1, p1, Landroid/os/UidBatteryConsumer;->mPowerComponents:Landroid/os/PowerComponents;

    invoke-virtual {v0, v1}, Landroid/os/PowerComponents$Builder;->addPowerAndDuration(Landroid/os/PowerComponents;)V

    .line 288
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 289
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v0

    .line 290
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 288
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/UidBatteryConsumer$Builder;->setTimeInStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;

    .line 291
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 292
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v0

    .line 293
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 291
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/UidBatteryConsumer$Builder;->setTimeInStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;

    .line 295
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    .line 296
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getPackageWithHighestDrain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    goto :goto_0

    .line 297
    :cond_0
    nop

    .line 298
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getPackageWithHighestDrain()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    .line 308
    :cond_1
    :goto_0
    return-object p0
.end method

.method public blacklist build()Landroid/os/UidBatteryConsumer;
    .locals 4

    .line 324
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    if-ne v0, v2, :cond_0

    .line 325
    iput-object v1, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    .line 327
    :cond_0
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putString(ILjava/lang/String;)V

    .line 330
    :cond_1
    new-instance v0, Landroid/os/UidBatteryConsumer;

    invoke-direct {v0, p0, v1}, Landroid/os/UidBatteryConsumer;-><init>(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/UidBatteryConsumer-IA;)V

    return-object v0
.end method

.method public blacklist excludeFromBatteryUsageStats()Landroid/os/UidBatteryConsumer$Builder;
    .locals 1

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mExcludeFromBatteryUsageStats:Z

    .line 279
    return-object p0
.end method

.method public blacklist getBatteryStatsUid()Landroid/os/BatteryStats$Uid;
    .locals 2

    .line 230
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mBatteryStatsUid:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_0

    .line 234
    return-object v0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UidBatteryConsumer.Builder was initialized without a BatteryStats.Uid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist getKey(II)Landroid/os/BatteryConsumer$Key;
    .locals 0

    .line 203
    invoke-super {p0, p1, p2}, Landroid/os/BatteryConsumer$BaseBuilder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getKeys(I)[Landroid/os/BatteryConsumer$Key;
    .locals 0

    .line 203
    invoke-super {p0, p1}, Landroid/os/BatteryConsumer$BaseBuilder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getTotalPower()D
    .locals 2

    .line 203
    invoke-super {p0}, Landroid/os/BatteryConsumer$BaseBuilder;->getTotalPower()D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getUid()I
    .locals 1

    .line 238
    iget v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mUid:I

    return v0
.end method

.method public blacklist isExcludedFromBatteryUsageStats()Z
    .locals 1

    .line 316
    iget-boolean v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mExcludeFromBatteryUsageStats:Z

    return v0
.end method

.method public blacklist isVirtualUid()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mIsVirtualUid:Z

    return v0
.end method

.method public bridge synthetic blacklist setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0

    .line 203
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0

    .line 203
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0

    .line 203
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0

    .line 203
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setPackageWithHighestDrain(Ljava/lang/String;)Landroid/os/UidBatteryConsumer$Builder;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mPackageWithHighestDrain:Ljava/lang/String;

    .line 252
    return-object p0
.end method

.method public blacklist setTimeInStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;
    .locals 3
    .param p1, "state"    # I
    .param p2, "timeInStateMs"    # J

    .line 261
    packed-switch p1, :pswitch_data_0

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :pswitch_0
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    .line 267
    goto :goto_0

    .line 263
    :pswitch_1
    iget-object v0, p0, Landroid/os/UidBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putLong(IJ)V

    .line 264
    nop

    .line 271
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic blacklist setUsageDurationForCustomComponentMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0

    .line 203
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setUsageDurationForCustomComponentMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0

    .line 203
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0

    .line 203
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method
