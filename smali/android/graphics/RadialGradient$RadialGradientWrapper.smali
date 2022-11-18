.class Landroid/graphics/RadialGradient$RadialGradientWrapper;
.super Ljava/lang/Object;
.source "RadialGradient.java"

# interfaces
.implements Landroid/graphics/IRadialGradientWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/RadialGradient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadialGradientWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/RadialGradient;


# direct methods
.method private constructor blacklist <init>(Landroid/graphics/RadialGradient;)V
    .locals 0

    .line 245
    iput-object p1, p0, Landroid/graphics/RadialGradient$RadialGradientWrapper;->this$0:Landroid/graphics/RadialGradient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/RadialGradient;Landroid/graphics/RadialGradient$RadialGradientWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/RadialGradient$RadialGradientWrapper;-><init>(Landroid/graphics/RadialGradient;)V

    return-void
.end method


# virtual methods
.method public blacklist getColorLongs()[J
    .locals 1

    .line 252
    iget-object v0, p0, Landroid/graphics/RadialGradient$RadialGradientWrapper;->this$0:Landroid/graphics/RadialGradient;

    invoke-static {v0}, Landroid/graphics/RadialGradient;->-$$Nest$fgetmColorLongs(Landroid/graphics/RadialGradient;)[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist setColorLongs([J)V
    .locals 1
    .param p1, "color"    # [J

    .line 248
    iget-object v0, p0, Landroid/graphics/RadialGradient$RadialGradientWrapper;->this$0:Landroid/graphics/RadialGradient;

    invoke-static {v0, p1}, Landroid/graphics/RadialGradient;->-$$Nest$fputmColorLongs(Landroid/graphics/RadialGradient;[J)V

    .line 249
    return-void
.end method
