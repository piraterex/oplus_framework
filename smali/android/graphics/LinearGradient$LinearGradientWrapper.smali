.class Landroid/graphics/LinearGradient$LinearGradientWrapper;
.super Ljava/lang/Object;
.source "LinearGradient.java"

# interfaces
.implements Landroid/graphics/ILinearGradientWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/LinearGradient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinearGradientWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/LinearGradient;


# direct methods
.method private constructor blacklist <init>(Landroid/graphics/LinearGradient;)V
    .locals 0

    .line 187
    iput-object p1, p0, Landroid/graphics/LinearGradient$LinearGradientWrapper;->this$0:Landroid/graphics/LinearGradient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/LinearGradient;Landroid/graphics/LinearGradient$LinearGradientWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/LinearGradient$LinearGradientWrapper;-><init>(Landroid/graphics/LinearGradient;)V

    return-void
.end method


# virtual methods
.method public blacklist getColorLongs()[J
    .locals 1

    .line 194
    iget-object v0, p0, Landroid/graphics/LinearGradient$LinearGradientWrapper;->this$0:Landroid/graphics/LinearGradient;

    invoke-static {v0}, Landroid/graphics/LinearGradient;->-$$Nest$fgetmColorLongs(Landroid/graphics/LinearGradient;)[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist setColorLongs([J)V
    .locals 1
    .param p1, "color"    # [J

    .line 190
    iget-object v0, p0, Landroid/graphics/LinearGradient$LinearGradientWrapper;->this$0:Landroid/graphics/LinearGradient;

    invoke-static {v0, p1}, Landroid/graphics/LinearGradient;->-$$Nest$fputmColorLongs(Landroid/graphics/LinearGradient;[J)V

    .line 191
    return-void
.end method
