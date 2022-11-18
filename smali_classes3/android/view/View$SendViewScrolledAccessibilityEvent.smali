.class Landroid/view/View$SendViewScrolledAccessibilityEvent;
.super Landroid/view/View$SendAccessibilityEventThrottle;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendViewScrolledAccessibilityEvent"
.end annotation


# instance fields
.field public greylist-max-o mDeltaX:I

.field public greylist-max-o mDeltaY:I

.field final synthetic blacklist this$0:Landroid/view/View;


# direct methods
.method private constructor blacklist <init>(Landroid/view/View;)V
    .locals 1

    .line 30793
    iput-object p1, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->this$0:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/View$SendAccessibilityEventThrottle;-><init>(Landroid/view/View;Landroid/view/View$SendAccessibilityEventThrottle-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/View;Landroid/view/View$SendViewScrolledAccessibilityEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$SendViewScrolledAccessibilityEvent;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o reset()V
    .locals 1

    .line 30808
    invoke-super {p0}, Landroid/view/View$SendAccessibilityEventThrottle;->reset()V

    .line 30809
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaX:I

    .line 30810
    iput v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaY:I

    .line 30811
    return-void
.end method

.method public blacklist updateWithAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "accessibilityEvent"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 30799
    invoke-super {p0, p1}, Landroid/view/View$SendAccessibilityEventThrottle;->updateWithAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 30800
    iget v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaX:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getScrollDeltaX()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaX:I

    .line 30801
    iget v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaY:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getScrollDeltaY()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaY:I

    .line 30802
    iget v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollDeltaX(I)V

    .line 30803
    iget v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollDeltaY(I)V

    .line 30804
    return-void
.end method
