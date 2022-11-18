.class Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final greylist-max-o UNDEFINED:I = -0x80000000

.field private static final greylist-max-o VIRTUAL_VIEW_ID_DECREMENT:I = 0x3

.field private static final greylist-max-o VIRTUAL_VIEW_ID_INCREMENT:I = 0x1

.field private static final greylist-max-o VIRTUAL_VIEW_ID_INPUT:I = 0x2


# instance fields
.field private greylist-max-o mAccessibilityFocusedView:I

.field private final greylist-max-o mTempArray:[I

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field final synthetic blacklist this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor blacklist <init>(Landroid/widget/NumberPicker;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/NumberPicker;

    .line 2472
    iput-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2481
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2483
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2485
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private greylist-max-o createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 2832
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2833
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v1, Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2834
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->access$4500(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2835
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 2837
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2838
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2840
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2841
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2842
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2845
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2846
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2847
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2848
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 2850
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 2851
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 2853
    .local v1, "applicationScale":F
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2854
    .local v5, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v5, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2855
    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 2856
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2858
    iget-object v6, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->isVisibleToUser()Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2860
    move-object v6, v5

    .line 2861
    .local v6, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v7, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2862
    .local v7, "locationOnScreen":[I
    iget-object v8, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v7}, Landroid/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2863
    aget v3, v7, v3

    aget v2, v7, v2

    invoke-virtual {v6, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2864
    invoke-virtual {v6, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 2865
    invoke-virtual {v0, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2867
    iget v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, v4, :cond_3

    .line 2868
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2870
    :cond_3
    iget v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, v4, :cond_4

    .line 2871
    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2873
    :cond_4
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2874
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 2875
    :cond_5
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2876
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2878
    :cond_6
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v3

    if-le v2, v3, :cond_8

    .line 2879
    :cond_7
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2881
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2885
    :cond_8
    return-object v0
.end method

.method private greylist-max-o createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .param p1, "virtualViewId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .line 2797
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2798
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2799
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->access$4300(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2800
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2801
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2802
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 2803
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2804
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2805
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2806
    iget v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 v3, 0x0

    if-ne v2, p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 2807
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2808
    .local v2, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v2, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2809
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4, v2}, Landroid/widget/NumberPicker;->access$4400(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2810
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2811
    move-object v4, v2

    .line 2812
    .local v4, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2813
    .local v5, "locationOnScreen":[I
    iget-object v6, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v6, v5}, Landroid/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2814
    aget v3, v5, v3

    aget v1, v5, v1

    invoke-virtual {v4, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2815
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2817
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, p1, :cond_1

    .line 2818
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2820
    :cond_1
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, p1, :cond_2

    .line 2821
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2823
    :cond_2
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2824
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2827
    :cond_3
    return-object v0
.end method

.method private greylist-max-o createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 2774
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2775
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2776
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 2777
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, v2, :cond_1

    .line 2778
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2780
    :cond_1
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, v2, :cond_2

    .line 2781
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2783
    :cond_2
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2784
    .local v1, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2785
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2, v1}, Landroid/widget/NumberPicker;->access$4200(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2786
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2787
    move-object v2, v1

    .line 2788
    .local v2, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2789
    .local v5, "locationOnScreen":[I
    iget-object v6, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v6, v5}, Landroid/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2790
    aget v4, v5, v4

    aget v3, v5, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2791
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2792
    return-object v0
.end method

.method private greylist-max-o findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 4
    .param p1, "searchedLowerCase"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 2740
    .local p3, "outResult":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 2742
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2743
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2744
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2745
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2747
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 2749
    :pswitch_1
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2750
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    .line 2751
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2752
    invoke-virtual {p0, v2}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2753
    return-void

    .line 2755
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2756
    .local v1, "contentDesc":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2757
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2758
    invoke-virtual {p0, v2}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2759
    return-void

    .line 2761
    .end local v0    # "text":Ljava/lang/CharSequence;
    .end local v1    # "contentDesc":Ljava/lang/CharSequence;
    :cond_2
    goto :goto_0

    .line 2763
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2764
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2765
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2766
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2768
    .end local v0    # "text":Ljava/lang/String;
    :cond_3
    return-void

    .line 2770
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 3

    .line 2897
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmValue(Landroid/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2898
    .local v0, "value":I
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmWrapSelectorWheel(Landroid/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2899
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-$$Nest$mgetWrappedSelectorIndex(Landroid/widget/NumberPicker;I)I

    move-result v0

    .line 2901
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmMinValue(Landroid/widget/NumberPicker;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 2902
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmDisplayedValues(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-$$Nest$mformatNumber(Landroid/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2903
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmDisplayedValues(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-$$Nest$fgetmMinValue(Landroid/widget/NumberPicker;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    .line 2902
    :goto_0
    return-object v1

    .line 2905
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 3

    .line 2909
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmValue(Landroid/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2910
    .local v0, "value":I
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmWrapSelectorWheel(Landroid/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2911
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-$$Nest$mgetWrappedSelectorIndex(Landroid/widget/NumberPicker;I)I

    move-result v0

    .line 2913
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmMaxValue(Landroid/widget/NumberPicker;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 2914
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmDisplayedValues(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-$$Nest$mformatNumber(Landroid/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2915
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmDisplayedValues(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-$$Nest$fgetmMinValue(Landroid/widget/NumberPicker;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    .line 2914
    :goto_0
    return-object v1

    .line 2917
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o hasVirtualDecrementButton()Z
    .locals 2

    .line 2889
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private greylist-max-o hasVirtualIncrementButton()Z
    .locals 2

    .line 2893
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private greylist-max-o sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 2
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I
    .param p3, "text"    # Ljava/lang/String;

    .line 2727
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$4000(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2728
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2729
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2730
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->access$4100(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2731
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2732
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2733
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2734
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v1, v0}, Landroid/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2736
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private greylist-max-o sendAccessibilityEventForVirtualText(I)V
    .locals 3
    .param p1, "eventType"    # I

    .line 2716
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$3900(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2717
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2718
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2719
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2720
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2721
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v1, v0}, Landroid/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2723
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "virtualViewId"    # I

    .line 2489
    packed-switch p1, :pswitch_data_0

    .line 2509
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 2494
    :pswitch_1
    const/4 v1, 0x3

    .line 2495
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$1700(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$1800(Landroid/widget/NumberPicker;)I

    move-result v4

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 2496
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$1900(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v5}, Landroid/widget/NumberPicker;->access$2000(Landroid/widget/NumberPicker;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v6}, Landroid/widget/NumberPicker;->access$2100(Landroid/widget/NumberPicker;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmTopSelectionDividerTop(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v6, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v6}, Landroid/widget/NumberPicker;->-$$Nest$fgetmSelectionDividerHeight(Landroid/widget/NumberPicker;)I

    move-result v6

    add-int/2addr v6, v0

    .line 2494
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 2499
    :pswitch_2
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$2200(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmTopSelectionDividerTop(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-$$Nest$fgetmSelectionDividerHeight(Landroid/widget/NumberPicker;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 2501
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$2300(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->access$2400(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->access$2500(Landroid/widget/NumberPicker;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-$$Nest$fgetmBottomSelectionDividerBottom(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->-$$Nest$fgetmSelectionDividerHeight(Landroid/widget/NumberPicker;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 2499
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 2504
    :pswitch_3
    const/4 v2, 0x1

    .line 2505
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$2600(Landroid/widget/NumberPicker;)I

    move-result v4

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmBottomSelectionDividerBottom(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmSelectionDividerHeight(Landroid/widget/NumberPicker;)I

    move-result v1

    sub-int v5, v0, v1

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 2507
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$2700(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->access$2800(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v6, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v6}, Landroid/widget/NumberPicker;->access$2900(Landroid/widget/NumberPicker;)I

    move-result v6

    sub-int/2addr v1, v6

    add-int v6, v0, v1

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$3000(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->access$3100(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v7, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v7}, Landroid/widget/NumberPicker;->access$3200(Landroid/widget/NumberPicker;)I

    move-result v7

    sub-int/2addr v1, v7

    add-int v7, v0, v1

    .line 2504
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 2491
    :pswitch_4
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$900(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->access$1000(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 2492
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$1100(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->access$1200(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->access$1300(Landroid/widget/NumberPicker;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->access$1400(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->access$1500(Landroid/widget/NumberPicker;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v5}, Landroid/widget/NumberPicker;->access$1600(Landroid/widget/NumberPicker;)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 2491
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "searched"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 2515
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2516
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2518
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2519
    .local v0, "searchedLowerCase":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2520
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    packed-switch p2, :pswitch_data_0

    .line 2538
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2533
    :pswitch_1
    invoke-direct {p0, v0, p2, v1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2535
    return-object v1

    .line 2522
    :pswitch_2
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2524
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2526
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2528
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist performAction(IILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 2543
    const/high16 v0, 0x10000

    const v1, 0x8000

    const/high16 v2, -0x80000000

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 2661
    :pswitch_1
    sparse-switch p2, :sswitch_data_0

    .line 2690
    return v4

    .line 2681
    :sswitch_0
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, p1, :cond_0

    .line 2682
    iput v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2683
    invoke-virtual {p0, p1, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2685
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$3800(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-$$Nest$fgetmTopSelectionDividerTop(Landroid/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    .line 2686
    return v3

    .line 2688
    :cond_0
    return v4

    .line 2672
    :sswitch_1
    iget v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v0, p1, :cond_1

    .line 2673
    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2674
    invoke-virtual {p0, p1, v1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2676
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$3700(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-$$Nest$fgetmTopSelectionDividerTop(Landroid/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    .line 2677
    return v3

    .line 2679
    :cond_1
    return v4

    .line 2663
    :sswitch_2
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2664
    if-ne p1, v3, :cond_2

    move v4, v3

    :cond_2
    move v0, v4

    .line 2665
    .local v0, "increment":Z
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-$$Nest$mchangeValueByOne(Landroid/widget/NumberPicker;Z)V

    .line 2666
    invoke-virtual {p0, p1, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2668
    return v3

    .line 2670
    .end local v0    # "increment":Z
    :cond_3
    return v4

    .line 2580
    :pswitch_2
    sparse-switch p2, :sswitch_data_1

    .line 2626
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 2617
    :sswitch_3
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, p1, :cond_4

    .line 2618
    iput v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2619
    invoke-virtual {p0, p1, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2621
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    .line 2622
    return v3

    .line 2624
    :cond_4
    return v4

    .line 2608
    :sswitch_4
    iget v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v0, p1, :cond_5

    .line 2609
    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2610
    invoke-virtual {p0, p1, v1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2612
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    .line 2613
    return v3

    .line 2615
    :cond_5
    return v4

    .line 2601
    :sswitch_5
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2602
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->performLongClick()Z

    .line 2603
    return v3

    .line 2605
    :cond_6
    return v4

    .line 2594
    :sswitch_6
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2595
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->performClick()Z

    .line 2596
    return v3

    .line 2598
    :cond_7
    return v4

    .line 2587
    :sswitch_7
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2588
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 2589
    return v3

    .line 2591
    :cond_8
    return v4

    .line 2582
    :sswitch_8
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2583
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmInputText(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    return v0

    .line 2629
    :cond_9
    return v4

    .line 2631
    :pswitch_3
    sparse-switch p2, :sswitch_data_2

    .line 2659
    return v4

    .line 2650
    :sswitch_9
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, p1, :cond_a

    .line 2651
    iput v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2652
    invoke-virtual {p0, p1, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2654
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmBottomSelectionDividerBottom(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->access$3500(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v5}, Landroid/widget/NumberPicker;->access$3600(Landroid/widget/NumberPicker;)I

    move-result v5

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    .line 2655
    return v3

    .line 2657
    :cond_a
    return v4

    .line 2641
    :sswitch_a
    iget v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v0, p1, :cond_b

    .line 2642
    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2643
    invoke-virtual {p0, p1, v1}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2645
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmBottomSelectionDividerBottom(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->access$3300(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v5}, Landroid/widget/NumberPicker;->access$3400(Landroid/widget/NumberPicker;)I

    move-result v5

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    .line 2646
    return v3

    .line 2648
    :cond_b
    return v4

    .line 2633
    :sswitch_b
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2634
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0, v3}, Landroid/widget/NumberPicker;->-$$Nest$mchangeValueByOne(Landroid/widget/NumberPicker;Z)V

    .line 2635
    invoke-virtual {p0, p1, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2637
    return v3

    .line 2639
    :cond_c
    return v4

    .line 2545
    :pswitch_4
    sparse-switch p2, :sswitch_data_3

    .line 2578
    goto :goto_0

    .line 2571
    :sswitch_c
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 2572
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_e

    .line 2573
    :cond_d
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0, v4}, Landroid/widget/NumberPicker;->-$$Nest$mchangeValueByOne(Landroid/widget/NumberPicker;Z)V

    .line 2574
    return v3

    .line 2576
    :cond_e
    return v4

    .line 2563
    :sswitch_d
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    .line 2564
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 2565
    :cond_f
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0, v3}, Landroid/widget/NumberPicker;->-$$Nest$mchangeValueByOne(Landroid/widget/NumberPicker;Z)V

    .line 2566
    return v3

    .line 2568
    :cond_10
    return v4

    .line 2554
    :sswitch_e
    iget v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v0, p1, :cond_11

    .line 2555
    iput v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2556
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->clearAccessibilityFocus()V

    .line 2557
    return v3

    .line 2559
    :cond_11
    return v4

    .line 2547
    :sswitch_f
    iget v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v0, p1, :cond_12

    .line 2548
    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2549
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->requestAccessibilityFocus()Z

    .line 2550
    return v3

    .line 2552
    :cond_12
    return v4

    .line 2692
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_7
        0x10 -> :sswitch_6
        0x20 -> :sswitch_5
        0x40 -> :sswitch_4
        0x80 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x10 -> :sswitch_b
        0x40 -> :sswitch_a
        0x80 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x40 -> :sswitch_f
        0x80 -> :sswitch_e
        0x1000 -> :sswitch_d
        0x2000 -> :sswitch_c
        0x1020038 -> :sswitch_c
        0x102003a -> :sswitch_d
    .end sparse-switch
.end method

.method public greylist-max-o sendAccessibilityEventForVirtualView(II)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .line 2696
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2698
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2699
    nop

    .line 2700
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2699
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 2704
    :pswitch_1
    invoke-direct {p0, p2}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    .line 2705
    goto :goto_0

    .line 2707
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2708
    nop

    .line 2709
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2708
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    .line 2713
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
