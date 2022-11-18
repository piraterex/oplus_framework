.class public abstract Lcom/oplus/verifycode/IOplusVerifyCodeListener$Stub;
.super Landroid/os/Binder;
.source "IOplusVerifyCodeListener.java"

# interfaces
.implements Lcom/oplus/verifycode/IOplusVerifyCodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/verifycode/IOplusVerifyCodeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/verifycode/IOplusVerifyCodeListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_notifyIMELayoutChanged:I = 0x2

.field static final blacklist TRANSACTION_notifyImeAttributeChanged:I = 0x1

.field static final blacklist TRANSACTION_onBindService:I = 0x3

.field static final blacklist TRANSACTION_onUnBindService:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.oplus.verifycode.IOplusVerifyCodeListener"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/verifycode/IOplusVerifyCodeListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/oplus/verifycode/IOplusVerifyCodeListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    const-string v0, "com.oplus.verifycode.IOplusVerifyCodeListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/verifycode/IOplusVerifyCodeListener;

    if-eqz v1, :cond_1

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/oplus/verifycode/IOplusVerifyCodeListener;

    return-object v1

    .line 49
    :cond_1
    new-instance v1, Lcom/oplus/verifycode/IOplusVerifyCodeListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/verifycode/IOplusVerifyCodeListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 58
    packed-switch p0, :pswitch_data_0

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 74
    :pswitch_0
    const-string v0, "onUnBindService"

    return-object v0

    .line 70
    :pswitch_1
    const-string v0, "onBindService"

    return-object v0

    .line 66
    :pswitch_2
    const-string v0, "notifyIMELayoutChanged"

    return-object v0

    .line 62
    :pswitch_3
    const-string v0, "notifyImeAttributeChanged"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 53
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 222
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 85
    invoke-static {p1}, Lcom/oplus/verifycode/IOplusVerifyCodeListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    const-string v0, "com.oplus.verifycode.IOplusVerifyCodeListener"

    .line 90
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 91
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 101
    packed-switch p1, :pswitch_data_1

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 97
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 136
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, v2}, Lcom/oplus/verifycode/IOplusVerifyCodeListener$Stub;->onUnBindService(I)V

    .line 139
    goto :goto_0

    .line 128
    .end local v2    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/verifycode/IOplusVerifyCodeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/verifycode/IOplusVerifyCodeService;

    move-result-object v2

    .line 129
    .local v2, "_arg0":Lcom/oplus/verifycode/IOplusVerifyCodeService;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v2}, Lcom/oplus/verifycode/IOplusVerifyCodeListener$Stub;->onBindService(Lcom/oplus/verifycode/IOplusVerifyCodeService;)V

    .line 131
    goto :goto_0

    .line 116
    .end local v2    # "_arg0":Lcom/oplus/verifycode/IOplusVerifyCodeService;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 118
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 120
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 121
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2, v3, v4}, Lcom/oplus/verifycode/IOplusVerifyCodeListener$Stub;->notifyIMELayoutChanged(ZII)V

    .line 123
    goto :goto_0

    .line 106
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 109
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, v2, v3}, Lcom/oplus/verifycode/IOplusVerifyCodeListener$Stub;->notifyImeAttributeChanged(IZ)V

    .line 111
    nop

    .line 146
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
