.class public abstract Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;
.super Landroid/os/Binder;
.source "IPreviewExtenderImpl.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IPreviewExtenderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCaptureStage:I = 0x8

.field static final blacklist TRANSACTION_getPreviewImageProcessor:I = 0xa

.field static final blacklist TRANSACTION_getProcessorType:I = 0x9

.field static final blacklist TRANSACTION_getRequestUpdateProcessor:I = 0xb

.field static final blacklist TRANSACTION_getSupportedResolutions:I = 0xc

.field static final blacklist TRANSACTION_init:I = 0x6

.field static final blacklist TRANSACTION_isExtensionAvailable:I = 0x7

.field static final blacklist TRANSACTION_onDeInit:I = 0x2

.field static final blacklist TRANSACTION_onDisableSession:I = 0x5

.field static final blacklist TRANSACTION_onEnableSession:I = 0x4

.field static final blacklist TRANSACTION_onInit:I = 0x1

.field static final blacklist TRANSACTION_onPresetSession:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "android.hardware.camera2.extension.IPreviewExtenderImpl"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 75
    if-nez p0, :cond_0

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_0
    const-string v0, "android.hardware.camera2.extension.IPreviewExtenderImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    if-eqz v1, :cond_1

    .line 80
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    return-object v1

    .line 82
    :cond_1
    new-instance v1, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 91
    packed-switch p0, :pswitch_data_0

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 139
    :pswitch_0
    const-string v0, "getSupportedResolutions"

    return-object v0

    .line 135
    :pswitch_1
    const-string v0, "getRequestUpdateProcessor"

    return-object v0

    .line 131
    :pswitch_2
    const-string v0, "getPreviewImageProcessor"

    return-object v0

    .line 127
    :pswitch_3
    const-string v0, "getProcessorType"

    return-object v0

    .line 123
    :pswitch_4
    const-string v0, "getCaptureStage"

    return-object v0

    .line 119
    :pswitch_5
    const-string v0, "isExtensionAvailable"

    return-object v0

    .line 115
    :pswitch_6
    const-string v0, "init"

    return-object v0

    .line 111
    :pswitch_7
    const-string/jumbo v0, "onDisableSession"

    return-object v0

    .line 107
    :pswitch_8
    const-string/jumbo v0, "onEnableSession"

    return-object v0

    .line 103
    :pswitch_9
    const-string/jumbo v0, "onPresetSession"

    return-object v0

    .line 99
    :pswitch_a
    const-string/jumbo v0, "onDeInit"

    return-object v0

    .line 95
    :pswitch_b
    const-string/jumbo v0, "onInit"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 86
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 503
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 150
    invoke-static {p1}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 154
    const-string v0, "android.hardware.camera2.extension.IPreviewExtenderImpl"

    .line 155
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 156
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 166
    packed-switch p1, :pswitch_data_1

    .line 266
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 162
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    return v1

    .line 259
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getSupportedResolutions()Ljava/util/List;

    move-result-object v2

    .line 260
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 262
    goto/16 :goto_0

    .line 252
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getRequestUpdateProcessor()Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    move-result-object v2

    .line 253
    .local v2, "_result":Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 255
    goto/16 :goto_0

    .line 245
    .end local v2    # "_result":Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getPreviewImageProcessor()Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;

    move-result-object v2

    .line 246
    .local v2, "_result":Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 248
    goto/16 :goto_0

    .line 238
    .end local v2    # "_result":Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getProcessorType()I

    move-result v2

    .line 239
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    goto/16 :goto_0

    .line 231
    .end local v2    # "_result":I
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->getCaptureStage()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    .line 232
    .local v2, "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 234
    goto :goto_0

    .line 220
    .end local v2    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 223
    .local v3, "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result v4

    .line 225
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 227
    goto :goto_0

    .line 209
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v4    # "_result":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 212
    .restart local v3    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    goto :goto_0

    .line 201
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->onDisableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    .line 202
    .local v2, "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 204
    goto :goto_0

    .line 194
    .end local v2    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->onEnableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    .line 195
    .restart local v2    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 197
    goto :goto_0

    .line 187
    .end local v2    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->onPresetSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    .line 188
    .restart local v2    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 190
    goto :goto_0

    .line 181
    .end local v2    # "_result":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->onDeInit()V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    goto :goto_0

    .line 171
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 174
    .restart local v3    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl$Stub;->onInit(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    nop

    .line 269
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
