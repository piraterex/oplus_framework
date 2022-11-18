.class public abstract Landroid/service/voice/IDspHotwordDetectionCallback$Stub;
.super Landroid/os/Binder;
.source "IDspHotwordDetectionCallback.java"

# interfaces
.implements Landroid/service/voice/IDspHotwordDetectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IDspHotwordDetectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IDspHotwordDetectionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onDetected:I = 0x1

.field static final blacklist TRANSACTION_onRejected:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "android.service.voice.IDspHotwordDetectionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/voice/IDspHotwordDetectionCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    const-string v0, "android.service.voice.IDspHotwordDetectionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/voice/IDspHotwordDetectionCallback;

    if-eqz v1, :cond_1

    .line 48
    move-object v1, v0

    check-cast v1, Landroid/service/voice/IDspHotwordDetectionCallback;

    return-object v1

    .line 50
    :cond_1
    new-instance v1, Landroid/service/voice/IDspHotwordDetectionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 59
    packed-switch p0, :pswitch_data_0

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 67
    :pswitch_0
    const-string/jumbo v0, "onRejected"

    return-object v0

    .line 63
    :pswitch_1
    const-string/jumbo v0, "onDetected"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 54
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 78
    invoke-static {p1}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    const-string v0, "android.service.voice.IDspHotwordDetectionCallback"

    .line 83
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 84
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 94
    packed-switch p1, :pswitch_data_1

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 90
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return v1

    .line 107
    :pswitch_1
    sget-object v2, Landroid/service/voice/HotwordRejectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/HotwordRejectedResult;

    .line 108
    .local v2, "_arg0":Landroid/service/voice/HotwordRejectedResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, v2}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;->onRejected(Landroid/service/voice/HotwordRejectedResult;)V

    .line 110
    goto :goto_0

    .line 99
    .end local v2    # "_arg0":Landroid/service/voice/HotwordRejectedResult;
    :pswitch_2
    sget-object v2, Landroid/service/voice/HotwordDetectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/HotwordDetectedResult;

    .line 100
    .local v2, "_arg0":Landroid/service/voice/HotwordDetectedResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    invoke-virtual {p0, v2}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;->onDetected(Landroid/service/voice/HotwordDetectedResult;)V

    .line 102
    nop

    .line 117
    .end local v2    # "_arg0":Landroid/service/voice/HotwordDetectedResult;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
