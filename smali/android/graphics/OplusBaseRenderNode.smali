.class public abstract Landroid/graphics/OplusBaseRenderNode;
.super Ljava/lang/Object;
.source "OplusBaseRenderNode.java"


# static fields
.field public static final blacklist USAGE_OPLUS_FORCE_BACKGROUND:I = 0x9

.field public static final blacklist USAGE_OPLUS_FORCE_FOREGROUND:I = 0xa

.field public static final blacklist USAGE_OPLUS_FORCE_UNKNOWN:I = 0x8


# instance fields
.field private blacklist mAlgorithmType:I

.field private blacklist mBackgroundUsageHint:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 25
    const-string/jumbo v0, "oplushwui_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/OplusBaseRenderNode;->mAlgorithmType:I

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Landroid/graphics/OplusBaseRenderNode;->mBackgroundUsageHint:I

    return-void
.end method

.method private static native blacklist nSetForceDarkNodeType(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetUsageForceDarkAlgorithmType(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public whitelist getBackgroundUsageHint()I
    .locals 1

    .line 30
    iget v0, p0, Landroid/graphics/OplusBaseRenderNode;->mBackgroundUsageHint:I

    return v0
.end method

.method protected abstract whitelist getNativeRenderNode()J
.end method

.method public whitelist setBackgroundUsageHint(I)V
    .locals 0
    .param p1, "usageHint"    # I

    .line 34
    iput p1, p0, Landroid/graphics/OplusBaseRenderNode;->mBackgroundUsageHint:I

    .line 35
    return-void
.end method

.method public whitelist setUsageForceDarkAlgorithmType(I)V
    .locals 2
    .param p1, "algorithmType"    # I

    .line 38
    iget v0, p0, Landroid/graphics/OplusBaseRenderNode;->mAlgorithmType:I

    if-eq v0, p1, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/graphics/OplusBaseRenderNode;->getNativeRenderNode()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/OplusBaseRenderNode;->nSetUsageForceDarkAlgorithmType(JI)V

    .line 40
    iput p1, p0, Landroid/graphics/OplusBaseRenderNode;->mAlgorithmType:I

    .line 42
    :cond_0
    return-void
.end method
