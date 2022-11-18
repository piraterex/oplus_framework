.class Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$Stub$1;
.super Ljava/lang/Object;
.source "IRpmh.java"

# interfaces
.implements Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$getPowerStateSubsystemSleepStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$Stub;

.field final synthetic blacklist val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor blacklist <init>(Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$Stub;

    .line 584
    iput-object p1, p0, Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$Stub$1;->this$0:Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$Stub;

    iput-object p2, p0, Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onValues(ILvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;)V
    .locals 2
    .param p1, "ret"    # I
    .param p2, "subsystem"    # Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;

    .line 587
    iget-object v0, p0, Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 588
    iget-object v0, p0, Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 589
    iget-object v0, p0, Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p2, v0}, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->writeToParcel(Landroid/os/HwParcel;)V

    .line 590
    iget-object v0, p0, Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 591
    return-void
.end method
