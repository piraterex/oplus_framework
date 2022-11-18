.class Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats$Stub$1;
.super Ljava/lang/Object;
.source "IBinderStats.java"

# interfaces
.implements Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats$getBufferFdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats$Stub;

.field final synthetic blacklist val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor blacklist <init>(Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats$Stub;

    .line 597
    iput-object p1, p0, Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats$Stub$1;->this$0:Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats$Stub;

    iput-object p2, p0, Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onValues(Landroid/os/NativeHandle;I)V
    .locals 2
    .param p1, "shared_fd"    # Landroid/os/NativeHandle;
    .param p2, "size"    # I

    .line 600
    iget-object v0, p0, Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 601
    iget-object v0, p0, Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 602
    iget-object v0, p0, Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 603
    iget-object v0, p0, Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 604
    return-void
.end method
