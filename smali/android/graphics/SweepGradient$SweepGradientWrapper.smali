.class Landroid/graphics/SweepGradient$SweepGradientWrapper;
.super Ljava/lang/Object;
.source "SweepGradient.java"

# interfaces
.implements Landroid/graphics/ISweepGradientWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/SweepGradient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SweepGradientWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/SweepGradient;


# direct methods
.method private constructor blacklist <init>(Landroid/graphics/SweepGradient;)V
    .locals 0

    .line 166
    iput-object p1, p0, Landroid/graphics/SweepGradient$SweepGradientWrapper;->this$0:Landroid/graphics/SweepGradient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/SweepGradient;Landroid/graphics/SweepGradient$SweepGradientWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/SweepGradient$SweepGradientWrapper;-><init>(Landroid/graphics/SweepGradient;)V

    return-void
.end method


# virtual methods
.method public blacklist getColorLongs()[J
    .locals 1

    .line 173
    iget-object v0, p0, Landroid/graphics/SweepGradient$SweepGradientWrapper;->this$0:Landroid/graphics/SweepGradient;

    invoke-static {v0}, Landroid/graphics/SweepGradient;->-$$Nest$fgetmColorLongs(Landroid/graphics/SweepGradient;)[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist setColorLongs([J)V
    .locals 1
    .param p1, "color"    # [J

    .line 169
    iget-object v0, p0, Landroid/graphics/SweepGradient$SweepGradientWrapper;->this$0:Landroid/graphics/SweepGradient;

    invoke-static {v0, p1}, Landroid/graphics/SweepGradient;->-$$Nest$fputmColorLongs(Landroid/graphics/SweepGradient;[J)V

    .line 170
    return-void
.end method
