.class Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub$2;
.super Ljava/lang/Object;
.source "IHandleFactory.java"

# interfaces
.implements Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$readCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub;

.field final synthetic blacklist val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor blacklist <init>(Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub;

    .line 646
    iput-object p1, p0, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub$2;->this$0:Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub;

    iput-object p2, p0, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onValues(ILjava/lang/String;)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 649
    iget-object v0, p0, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 650
    iget-object v0, p0, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 651
    iget-object v0, p0, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 653
    return-void
.end method
