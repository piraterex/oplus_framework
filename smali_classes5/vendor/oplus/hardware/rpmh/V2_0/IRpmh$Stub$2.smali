.class Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$Stub$2;
.super Ljava/lang/Object;
.source "IRpmh.java"

# interfaces
.implements Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$getPowerStateSubsystemSleepStateListCallback;


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

    .line 599
    iput-object p1, p0, Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$Stub$2;->this$0:Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$Stub;

    iput-object p2, p0, Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onValues(ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "ret"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;",
            ">;)V"
        }
    .end annotation

    .line 602
    .local p2, "subsystemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;>;"
    iget-object v0, p0, Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 603
    iget-object v0, p0, Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 604
    iget-object v0, p0, Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-static {v0, p2}, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 605
    iget-object v0, p0, Lvendor/oplus/hardware/rpmh/V2_0/IRpmh$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 606
    return-void
.end method
