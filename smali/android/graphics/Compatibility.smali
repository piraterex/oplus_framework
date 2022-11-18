.class public final Landroid/graphics/Compatibility;
.super Ljava/lang/Object;
.source "Compatibility.java"


# static fields
.field private static blacklist sTargetSdkVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 27
    const/4 v0, 0x0

    sput v0, Landroid/graphics/Compatibility;->sTargetSdkVersion:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getTargetSdkVersion()I
    .locals 1

    .line 45
    sget v0, Landroid/graphics/Compatibility;->sTargetSdkVersion:I

    return v0
.end method

.method public static blacklist setTargetSdkVersion(I)V
    .locals 0
    .param p0, "targetSdkVersion"    # I

    .line 35
    sput p0, Landroid/graphics/Compatibility;->sTargetSdkVersion:I

    .line 36
    invoke-static {p0}, Landroid/graphics/Canvas;->setCompatibilityVersion(I)V

    .line 37
    return-void
.end method
