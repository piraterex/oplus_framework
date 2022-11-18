.class public interface abstract Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$getPowerStateSubsystemSleepStateListCallback;
.super Ljava/lang/Object;
.source "IRpmh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/oplus/hardware/rpmh/V2_0/IRpmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "getPowerStateSubsystemSleepStateListCallback"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract blacklist onValues(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;",
            ">;)V"
        }
    .end annotation
.end method
