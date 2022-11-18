.class Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub$6;
.super Ljava/lang/Object;
.source "IRpmh.java"

# interfaces
.implements Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$getWakeLockProfilerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;

.field final synthetic blacklist val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor blacklist <init>(Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;

    .line 945
    iput-object p1, p0, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub$6;->this$0:Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub;

    iput-object p2, p0, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onValues(ILjava/lang/String;)V
    .locals 2
    .param p1, "ret"    # I
    .param p2, "result"    # Ljava/lang/String;

    .line 948
    iget-object v0, p0, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 949
    iget-object v0, p0, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 950
    iget-object v0, p0, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 951
    iget-object v0, p0, Lvendor/oplus/hardware/rpmh/V1_0/IRpmh$Stub$6;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 952
    return-void
.end method
