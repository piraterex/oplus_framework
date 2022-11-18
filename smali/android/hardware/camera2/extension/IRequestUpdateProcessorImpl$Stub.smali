.class public abstract Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl$Stub;
.super Landroid/os/Binder;
.source "IRequestUpdateProcessorImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onImageFormatUpdate:I = 0x3

.field static final blacklist TRANSACTION_onOutputSurface:I = 0x1

.field static final blacklist TRANSACTION_onResolutionUpdate:I = 0x2

.field static final blacklist TRANSACTION_process:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "android.hardware.camera2.extension.IRequestUpdateProcessorImpl"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    const-string v0, "android.hardware.camera2.extension.IRequestUpdateProcessorImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    if-eqz v1, :cond_1

    .line 48
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    return-object v1

    .line 50
    :cond_1
    new-instance v1, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 59
    packed-switch p0, :pswitch_data_0

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 75
    :pswitch_0
    const-string/jumbo v0, "process"

    return-object v0

    .line 71
    :pswitch_1
    const-string/jumbo v0, "onImageFormatUpdate"

    return-object v0

    .line 67
    :pswitch_2
    const-string/jumbo v0, "onResolutionUpdate"

    return-object v0

    .line 63
    :pswitch_3
    const-string/jumbo v0, "onOutputSurface"

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

    .line 54
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 240
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 86
    invoke-static {p1}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 90
    const-string v0, "android.hardware.camera2.extension.IRequestUpdateProcessorImpl"

    .line 91
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 92
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 102
    packed-switch p1, :pswitch_data_1

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 98
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return v1

    .line 136
    :pswitch_1
    sget-object v2, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 138
    .local v2, "_arg0":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 139
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl$Stub;->process(Landroid/hardware/camera2/impl/CameraMetadataNative;I)Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v4

    .line 141
    .local v4, "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 143
    goto :goto_0

    .line 127
    .end local v2    # "_arg0":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 128
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl$Stub;->onImageFormatUpdate(I)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    goto :goto_0

    .line 118
    .end local v2    # "_arg0":I
    :pswitch_3
    sget-object v2, Landroid/hardware/camera2/extension/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/Size;

    .line 119
    .local v2, "_arg0":Landroid/hardware/camera2/extension/Size;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl$Stub;->onResolutionUpdate(Landroid/hardware/camera2/extension/Size;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    goto :goto_0

    .line 107
    .end local v2    # "_arg0":Landroid/hardware/camera2/extension/Size;
    :pswitch_4
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 109
    .local v2, "_arg0":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 110
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl$Stub;->onOutputSurface(Landroid/view/Surface;I)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    nop

    .line 150
    .end local v2    # "_arg0":Landroid/view/Surface;
    .end local v3    # "_arg1":I
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
