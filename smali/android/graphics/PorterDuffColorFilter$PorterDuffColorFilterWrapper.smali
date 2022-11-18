.class Landroid/graphics/PorterDuffColorFilter$PorterDuffColorFilterWrapper;
.super Ljava/lang/Object;
.source "PorterDuffColorFilter.java"

# interfaces
.implements Landroid/graphics/IPorterDuffColorFilterWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/PorterDuffColorFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PorterDuffColorFilterWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method private constructor blacklist <init>(Landroid/graphics/PorterDuffColorFilter;)V
    .locals 0

    .line 106
    iput-object p1, p0, Landroid/graphics/PorterDuffColorFilter$PorterDuffColorFilterWrapper;->this$0:Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/PorterDuffColorFilter;Landroid/graphics/PorterDuffColorFilter$PorterDuffColorFilterWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/PorterDuffColorFilter$PorterDuffColorFilterWrapper;-><init>(Landroid/graphics/PorterDuffColorFilter;)V

    return-void
.end method


# virtual methods
.method public blacklist setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 109
    iget-object v0, p0, Landroid/graphics/PorterDuffColorFilter$PorterDuffColorFilterWrapper;->this$0:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0}, Landroid/graphics/PorterDuffColorFilter;->-$$Nest$fgetmColor(Landroid/graphics/PorterDuffColorFilter;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 110
    iget-object v0, p0, Landroid/graphics/PorterDuffColorFilter$PorterDuffColorFilterWrapper;->this$0:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0, p1}, Landroid/graphics/PorterDuffColorFilter;->-$$Nest$fputmColor(Landroid/graphics/PorterDuffColorFilter;I)V

    .line 111
    iget-object v0, p0, Landroid/graphics/PorterDuffColorFilter$PorterDuffColorFilterWrapper;->this$0:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->discardNativeInstance()V

    .line 113
    :cond_0
    return-void
.end method
