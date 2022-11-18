.class public abstract Landroid/media/INativeSpatializerCallback$Stub;
.super Landroid/os/Binder;
.source "INativeSpatializerCallback.java"

# interfaces
.implements Landroid/media/INativeSpatializerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/INativeSpatializerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/INativeSpatializerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onLevelChanged:I = 0x1

.field static final blacklist TRANSACTION_onOutputChanged:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    sget-object v0, Landroid/media/INativeSpatializerCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/media/INativeSpatializerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/INativeSpatializerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    sget-object v0, Landroid/media/INativeSpatializerCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/INativeSpatializerCallback;

    if-eqz v1, :cond_1

    .line 55
    move-object v1, v0

    check-cast v1, Landroid/media/INativeSpatializerCallback;

    return-object v1

    .line 57
    :cond_1
    new-instance v1, Landroid/media/INativeSpatializerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/INativeSpatializerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 61
    return-object p0
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

    .line 65
    sget-object v0, Landroid/media/INativeSpatializerCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 66
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 67
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 77
    packed-switch p1, :pswitch_data_1

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 73
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return v1

    .line 90
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 91
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 92
    invoke-virtual {p0, v2}, Landroid/media/INativeSpatializerCallback$Stub;->onOutputChanged(I)V

    .line 93
    goto :goto_0

    .line 82
    .end local v2    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 83
    .local v2, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 84
    invoke-virtual {p0, v2}, Landroid/media/INativeSpatializerCallback$Stub;->onLevelChanged(B)V

    .line 85
    nop

    .line 100
    .end local v2    # "_arg0":B
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
