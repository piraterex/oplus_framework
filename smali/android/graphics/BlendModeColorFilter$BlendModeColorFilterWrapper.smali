.class Landroid/graphics/BlendModeColorFilter$BlendModeColorFilterWrapper;
.super Ljava/lang/Object;
.source "BlendModeColorFilter.java"

# interfaces
.implements Landroid/graphics/IBlendModeColorFilterWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/BlendModeColorFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlendModeColorFilterWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/BlendModeColorFilter;


# direct methods
.method private constructor blacklist <init>(Landroid/graphics/BlendModeColorFilter;)V
    .locals 0

    .line 97
    iput-object p1, p0, Landroid/graphics/BlendModeColorFilter$BlendModeColorFilterWrapper;->this$0:Landroid/graphics/BlendModeColorFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/BlendModeColorFilter;Landroid/graphics/BlendModeColorFilter$BlendModeColorFilterWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/BlendModeColorFilter$BlendModeColorFilterWrapper;-><init>(Landroid/graphics/BlendModeColorFilter;)V

    return-void
.end method


# virtual methods
.method public blacklist setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 100
    iget-object v0, p0, Landroid/graphics/BlendModeColorFilter$BlendModeColorFilterWrapper;->this$0:Landroid/graphics/BlendModeColorFilter;

    iget v0, v0, Landroid/graphics/BlendModeColorFilter;->mColor:I

    if-eq v0, p1, :cond_0

    .line 101
    iget-object v0, p0, Landroid/graphics/BlendModeColorFilter$BlendModeColorFilterWrapper;->this$0:Landroid/graphics/BlendModeColorFilter;

    iput p1, v0, Landroid/graphics/BlendModeColorFilter;->mColor:I

    .line 102
    iget-object v0, p0, Landroid/graphics/BlendModeColorFilter$BlendModeColorFilterWrapper;->this$0:Landroid/graphics/BlendModeColorFilter;

    invoke-virtual {v0}, Landroid/graphics/BlendModeColorFilter;->discardNativeInstance()V

    .line 104
    :cond_0
    return-void
.end method
