.class public abstract Landroid/hardware/face/IFaceCommandCallback$Stub;
.super Landroid/os/Binder;
.source "IFaceCommandCallback.java"

# interfaces
.implements Landroid/hardware/face/IFaceCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/IFaceCommandCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/IFaceCommandCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onFaceCmd:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "android.hardware.face.IFaceCommandCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/face/IFaceCommandCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceCommandCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_0
    const-string v0, "android.hardware.face.IFaceCommandCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/face/IFaceCommandCallback;

    if-eqz v1, :cond_1

    .line 38
    move-object v1, v0

    check-cast v1, Landroid/hardware/face/IFaceCommandCallback;

    return-object v1

    .line 40
    :cond_1
    new-instance v1, Landroid/hardware/face/IFaceCommandCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/face/IFaceCommandCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 44
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const-string v0, "android.hardware.face.IFaceCommandCallback"

    .line 49
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 50
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 60
    packed-switch p1, :pswitch_data_1

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 56
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return v1

    .line 65
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 67
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 68
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 69
    invoke-virtual {p0, v2, v3}, Landroid/hardware/face/IFaceCommandCallback$Stub;->onFaceCmd(I[B)V

    .line 70
    nop

    .line 77
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
