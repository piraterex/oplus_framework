.class public Landroid/graphics/IBaseCanvasExt$Entity;
.super Ljava/lang/Object;
.source "IBaseCanvasExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/IBaseCanvasExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entity"
.end annotation


# instance fields
.field public blacklist isDarkMode:Z

.field public blacklist newPaint:Landroid/graphics/Paint;

.field public blacklist realPaintState:Landroid/graphics/IBaseCanvasExt$RealPaintState;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
