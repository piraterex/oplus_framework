.class Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;
.super Ljava/lang/Object;
.source "CameraMetadataNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraMetadataNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamConfigurationData"
.end annotation


# instance fields
.field blacklist minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field blacklist stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

.field blacklist streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraMetadataNative;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 0

    .line 1203
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->this$0:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1204
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1205
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1206
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    return-void
.end method
