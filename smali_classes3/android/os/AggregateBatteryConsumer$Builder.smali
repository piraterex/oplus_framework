.class public final Landroid/os/AggregateBatteryConsumer$Builder;
.super Landroid/os/BatteryConsumer$BaseBuilder;
.source "AggregateBatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AggregateBatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/BatteryConsumer$BaseBuilder<",
        "Landroid/os/AggregateBatteryConsumer$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;I)V
    .locals 1
    .param p1, "data"    # Landroid/os/BatteryConsumer$BatteryConsumerData;
    .param p2, "scope"    # I

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/BatteryConsumer$BaseBuilder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;I)V

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putInt(II)V

    .line 107
    return-void
.end method


# virtual methods
.method public blacklist add(Landroid/os/AggregateBatteryConsumer;)V
    .locals 4
    .param p1, "aggregateBatteryConsumer"    # Landroid/os/AggregateBatteryConsumer;

    .line 121
    iget-object v0, p0, Landroid/os/AggregateBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v0

    .line 122
    invoke-virtual {p1}, Landroid/os/AggregateBatteryConsumer;->getConsumedPower()D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 121
    invoke-virtual {p0, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(D)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 123
    iget-object v0, p0, Landroid/os/AggregateBatteryConsumer$Builder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    iget-object v1, p1, Landroid/os/AggregateBatteryConsumer;->mPowerComponents:Landroid/os/PowerComponents;

    invoke-virtual {v0, v1}, Landroid/os/PowerComponents$Builder;->addPowerAndDuration(Landroid/os/PowerComponents;)V

    .line 124
    return-void
.end method

.method public blacklist build()Landroid/os/AggregateBatteryConsumer;
    .locals 2

    .line 131
    new-instance v0, Landroid/os/AggregateBatteryConsumer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/AggregateBatteryConsumer;-><init>(Landroid/os/AggregateBatteryConsumer$Builder;Landroid/os/AggregateBatteryConsumer-IA;)V

    return-object v0
.end method

.method public bridge synthetic blacklist getKey(II)Landroid/os/BatteryConsumer$Key;
    .locals 0

    .line 103
    invoke-super {p0, p1, p2}, Landroid/os/BatteryConsumer$BaseBuilder;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getKeys(I)[Landroid/os/BatteryConsumer$Key;
    .locals 0

    .line 103
    invoke-super {p0, p1}, Landroid/os/BatteryConsumer$BaseBuilder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getTotalPower()D
    .locals 2

    .line 103
    invoke-super {p0}, Landroid/os/BatteryConsumer$BaseBuilder;->getTotalPower()D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist setConsumedPower(D)Landroid/os/AggregateBatteryConsumer$Builder;
    .locals 2
    .param p1, "consumedPowerMah"    # D

    .line 113
    iget-object v0, p0, Landroid/os/AggregateBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->putDouble(ID)V

    .line 114
    return-object p0
.end method

.method public bridge synthetic blacklist setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setUsageDurationForCustomComponentMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setUsageDurationForCustomComponentMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;
    .locals 0

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/os/BatteryConsumer$BaseBuilder;->setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    return-object p1
.end method
