.class public Landroid/graphics/IBaseCanvasExt$RealPaintState;
.super Ljava/lang/Object;
.source "IBaseCanvasExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/IBaseCanvasExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RealPaintState"
.end annotation


# instance fields
.field public blacklist color:I

.field public blacklist colorFilter:Landroid/graphics/ColorFilter;

.field public blacklist colorFilterColor:I

.field public blacklist composeShaderColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[J>;"
        }
    .end annotation
.end field

.field public blacklist shaderColors:[J


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
