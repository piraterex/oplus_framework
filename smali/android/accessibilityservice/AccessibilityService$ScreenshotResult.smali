.class public final Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;
.super Ljava/lang/Object;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenshotResult"
.end annotation


# instance fields
.field private final blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private final blacklist mHardwareBuffer:Landroid/hardware/HardwareBuffer;

.field private final blacklist mTimestamp:J


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;J)V
    .locals 1
    .param p1, "hardwareBuffer"    # Landroid/hardware/HardwareBuffer;
    .param p2, "colorSpace"    # Landroid/graphics/ColorSpace;
    .param p3, "timestamp"    # J

    .line 3222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3223
    const-string v0, "hardwareBuffer cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3224
    const-string v0, "colorSpace cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3225
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 3226
    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 3227
    iput-wide p3, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mTimestamp:J

    .line 3228
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;JLandroid/accessibilityservice/AccessibilityService$ScreenshotResult-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;-><init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;J)V

    return-void
.end method


# virtual methods
.method public whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .locals 1

    .line 3238
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public whitelist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 1

    .line 3252
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method public whitelist getTimestamp()J
    .locals 2

    .line 3262
    iget-wide v0, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mTimestamp:J

    return-wide v0
.end method
