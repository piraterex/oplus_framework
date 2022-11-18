.class public final Landroid/view/WindowMetrics;
.super Ljava/lang/Object;
.source "WindowMetrics.java"


# instance fields
.field private final blacklist mBounds:Landroid/graphics/Rect;

.field private final blacklist mWindowInsets:Landroid/view/WindowInsets;


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/Rect;Landroid/view/WindowInsets;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "windowInsets"    # Landroid/view/WindowInsets;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/view/WindowMetrics;->mBounds:Landroid/graphics/Rect;

    .line 39
    iput-object p2, p0, Landroid/view/WindowMetrics;->mWindowInsets:Landroid/view/WindowInsets;

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 70
    iget-object v0, p0, Landroid/view/WindowMetrics;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getWindowInsets()Landroid/view/WindowInsets;
    .locals 1

    .line 79
    iget-object v0, p0, Landroid/view/WindowMetrics;->mWindowInsets:Landroid/view/WindowInsets;

    return-object v0
.end method
