.class public abstract Landroid/hardware/contexthub/IContextHubCallback$Stub;
.super Landroid/os/Binder;
.source "IContextHubCallback.java"

# interfaces
.implements Landroid/hardware/contexthub/IContextHubCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/IContextHubCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/IContextHubCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_handleContextHubAsyncEvent:I = 0x3

.field static final blacklist TRANSACTION_handleContextHubMessage:I = 0x2

.field static final blacklist TRANSACTION_handleNanoappInfo:I = 0x1

.field static final blacklist TRANSACTION_handleTransactionResult:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHubCallback$Stub;->markVintfStability()V

    .line 50
    sget-object v0, Landroid/hardware/contexthub/IContextHubCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/contexthub/IContextHubCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHubCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_0

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    sget-object v0, Landroid/hardware/contexthub/IContextHubCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/contexthub/IContextHubCallback;

    if-eqz v1, :cond_1

    .line 63
    move-object v1, v0

    check-cast v1, Landroid/hardware/contexthub/IContextHubCallback;

    return-object v1

    .line 65
    :cond_1
    new-instance v1, Landroid/hardware/contexthub/IContextHubCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/contexthub/IContextHubCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 69
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

    .line 73
    sget-object v0, Landroid/hardware/contexthub/IContextHubCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 74
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 75
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 97
    packed-switch p1, :pswitch_data_0

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 81
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return v1

    .line 86
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHubCallback$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return v1

    .line 92
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHubCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 131
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 134
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2, v3}, Landroid/hardware/contexthub/IContextHubCallback$Stub;->handleTransactionResult(IZ)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    goto :goto_0

    .line 122
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v2}, Landroid/hardware/contexthub/IContextHubCallback$Stub;->handleContextHubAsyncEvent(I)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    goto :goto_0

    .line 111
    .end local v2    # "_arg0":I
    :pswitch_2
    sget-object v2, Landroid/hardware/contexthub/ContextHubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/ContextHubMessage;

    .line 113
    .local v2, "_arg0":Landroid/hardware/contexthub/ContextHubMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v2, v3}, Landroid/hardware/contexthub/IContextHubCallback$Stub;->handleContextHubMessage(Landroid/hardware/contexthub/ContextHubMessage;[Ljava/lang/String;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    goto :goto_0

    .line 102
    .end local v2    # "_arg0":Landroid/hardware/contexthub/ContextHubMessage;
    .end local v3    # "_arg1":[Ljava/lang/String;
    :pswitch_3
    sget-object v2, Landroid/hardware/contexthub/NanoappInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/contexthub/NanoappInfo;

    .line 103
    .local v2, "_arg0":[Landroid/hardware/contexthub/NanoappInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 104
    invoke-virtual {p0, v2}, Landroid/hardware/contexthub/IContextHubCallback$Stub;->handleNanoappInfo([Landroid/hardware/contexthub/NanoappInfo;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    nop

    .line 144
    .end local v2    # "_arg0":[Landroid/hardware/contexthub/NanoappInfo;
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
