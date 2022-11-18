.class Landroid/graphics/drawable/AdaptiveIconDrawable$AdaptiveIconDrawableWrapper;
.super Ljava/lang/Object;
.source "AdaptiveIconDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/IAdaptiveIconDrawableWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AdaptiveIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdaptiveIconDrawableWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/drawable/AdaptiveIconDrawable;


# direct methods
.method private constructor blacklist <init>(Landroid/graphics/drawable/AdaptiveIconDrawable;)V
    .locals 0

    .line 1202
    iput-object p1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$AdaptiveIconDrawableWrapper;->this$0:Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/graphics/drawable/AdaptiveIconDrawable$AdaptiveIconDrawableWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable$AdaptiveIconDrawableWrapper;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable;)V

    return-void
.end method


# virtual methods
.method public blacklist getAdaptiveIconDrawableExt()Landroid/graphics/drawable/IAdaptiveIconDrawableExt;
    .locals 1

    .line 1205
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable$AdaptiveIconDrawableWrapper;->this$0:Landroid/graphics/drawable/AdaptiveIconDrawable;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mIconDrawableExt:Landroid/graphics/drawable/IAdaptiveIconDrawableExt;

    return-object v0
.end method
