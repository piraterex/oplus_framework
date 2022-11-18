.class public Landroid/widget/TabHost;
.super Landroid/widget/FrameLayout;
.source "TabHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TabHost$IntentContentStrategy;,
        Landroid/widget/TabHost$FactoryContentStrategy;,
        Landroid/widget/TabHost$ViewIdContentStrategy;,
        Landroid/widget/TabHost$ViewIndicatorStrategy;,
        Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;,
        Landroid/widget/TabHost$LabelIndicatorStrategy;,
        Landroid/widget/TabHost$ContentStrategy;,
        Landroid/widget/TabHost$IndicatorStrategy;,
        Landroid/widget/TabHost$TabSpec;,
        Landroid/widget/TabHost$TabContentFactory;,
        Landroid/widget/TabHost$OnTabChangeListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o TABWIDGET_LOCATION_BOTTOM:I = 0x3

.field private static final greylist-max-o TABWIDGET_LOCATION_LEFT:I = 0x0

.field private static final greylist-max-o TABWIDGET_LOCATION_RIGHT:I = 0x2

.field private static final greylist-max-o TABWIDGET_LOCATION_TOP:I = 0x1


# instance fields
.field protected greylist-max-q mCurrentTab:I

.field private greylist-max-o mCurrentView:Landroid/view/View;

.field protected greylist-max-o mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private greylist-max-q mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private greylist-max-o mTabContent:Landroid/widget/FrameLayout;

.field private greylist-max-o mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private greylist-max-o mTabLayoutId:I

.field private greylist-max-q mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTabWidget:Landroid/widget/TabWidget;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTabContent(Landroid/widget/TabHost;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTabLayoutId(Landroid/widget/TabHost;)I
    .locals 0

    iget p0, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTabWidget(Landroid/widget/TabHost;)Landroid/widget/TabWidget;
    .locals 0

    iget-object p0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    .line 83
    iput-object v0, p0, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 96
    invoke-direct {p0}, Landroid/widget/TabHost;->initTabHost()V

    .line 97
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 100
    const v0, 0x1010083

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 105
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    .line 83
    iput-object v0, p0, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 110
    sget-object v0, Lcom/android/internal/R$styleable;->TabWidget:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 112
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v3, Lcom/android/internal/R$styleable;->TabWidget:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/widget/TabHost;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 115
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    .line 116
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    iget v1, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    if-nez v1, :cond_0

    .line 121
    const v1, 0x109012e

    iput v1, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    .line 124
    :cond_0
    invoke-direct {p0}, Landroid/widget/TabHost;->initTabHost()V

    .line 125
    return-void
.end method

.method private greylist-max-o getTabWidgetLocation()I
    .locals 3

    .line 350
    const/4 v0, 0x1

    .line 352
    .local v0, "location":I
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 359
    iget-object v1, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    iget-object v2, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getTop()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    .line 354
    :pswitch_0
    iget-object v1, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    iget-object v2, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getLeft()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 355
    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 356
    goto :goto_2

    .line 360
    :cond_1
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    .line 363
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o initTabHost()V
    .locals 1

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setFocusableInTouchMode(Z)V

    .line 129
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setDescendantFocusability(I)V

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    .line 133
    return-void
.end method

.method private greylist-max-o invokeOnTabChangeListener()V
    .locals 2

    .line 482
    iget-object v0, p0, Landroid/widget/TabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 485
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist addTab(Landroid/widget/TabHost$TabSpec;)V
    .locals 4
    .param p1, "tabSpec"    # Landroid/widget/TabHost$TabSpec;

    .line 240
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->-$$Nest$fgetmIndicatorStrategy(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 244
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->-$$Nest$fgetmContentStrategy(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$ContentStrategy;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 247
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->-$$Nest$fgetmIndicatorStrategy(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/TabHost$IndicatorStrategy;->createIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 248
    .local v0, "tabIndicator":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/TabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 252
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->-$$Nest$fgetmIndicatorStrategy(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TabHost$ViewIndicatorStrategy;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    .line 256
    :cond_0
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1, v0}, Landroid/widget/TabWidget;->addView(Landroid/view/View;)V

    .line 257
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 260
    invoke-virtual {p0, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 262
    :cond_1
    return-void

    .line 245
    .end local v0    # "tabIndicator":Landroid/view/View;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "you must specify a way to create the tab content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "you must specify a way to create the tab indicator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist clearAllTabs()V
    .locals 1

    .line 269
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v0}, Landroid/widget/TabWidget;->removeAllViews()V

    .line 270
    invoke-direct {p0}, Landroid/widget/TabHost;->initTabHost()V

    .line 271
    iget-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 272
    iget-object v0, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 273
    invoke-virtual {p0}, Landroid/widget/TabHost;->requestLayout()V

    .line 274
    invoke-virtual {p0}, Landroid/widget/TabHost;->invalidate()V

    .line 275
    return-void
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 368
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 373
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 374
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    .line 377
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    const/16 v1, 0x13

    .line 379
    .local v1, "keyCodeShouldChangeFocus":I
    const/16 v2, 0x21

    .line 380
    .local v2, "directionShouldChangeFocus":I
    const/4 v3, 0x2

    .line 382
    .local v3, "soundEffect":I
    invoke-direct {p0}, Landroid/widget/TabHost;->getTabWidgetLocation()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 400
    :pswitch_0
    const/16 v1, 0x13

    .line 401
    const/16 v2, 0x21

    .line 402
    const/4 v3, 0x2

    goto :goto_0

    .line 394
    :pswitch_1
    const/16 v1, 0x14

    .line 395
    const/16 v2, 0x82

    .line 396
    const/4 v3, 0x4

    .line 397
    goto :goto_0

    .line 389
    :pswitch_2
    const/16 v1, 0x16

    .line 390
    const/16 v2, 0x42

    .line 391
    const/4 v3, 0x3

    .line 392
    goto :goto_0

    .line 384
    :pswitch_3
    const/16 v1, 0x15

    .line 385
    const/16 v2, 0x11

    .line 386
    const/4 v3, 0x1

    .line 387
    nop

    .line 405
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-ne v4, v1, :cond_0

    iget-object v4, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    .line 406
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 407
    iget-object v4, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    iget v5, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-virtual {v4, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 408
    invoke-virtual {p0, v3}, Landroid/widget/TabHost;->playSoundEffect(I)V

    .line 409
    const/4 v4, 0x1

    return v4

    .line 412
    .end local v1    # "keyCodeShouldChangeFocus":I
    .end local v2    # "directionShouldChangeFocus":I
    .end local v3    # "soundEffect":I
    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist dispatchWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .line 418
    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 421
    :cond_0
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 425
    const-class v0, Landroid/widget/TabHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentTab()I
    .locals 1

    .line 288
    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    return v0
.end method

.method public whitelist getCurrentTabTag()Ljava/lang/String;
    .locals 2

    .line 299
    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 300
    iget-object v0, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 302
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCurrentTabView()Landroid/view/View;
    .locals 2

    .line 313
    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 314
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 316
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCurrentView()Landroid/view/View;
    .locals 1

    .line 320
    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    .line 341
    iget-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public whitelist getTabWidget()Landroid/widget/TabWidget;
    .locals 1

    .line 278
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    return-object v0
.end method

.method public whitelist newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 143
    if-eqz p1, :cond_0

    .line 146
    new-instance v0, Landroid/widget/TabHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/TabHost$TabSpec;-><init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/widget/TabHost$TabSpec-IA;)V

    return-object v0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tag must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onTouchModeChanged(Z)V
    .locals 0
    .param p1, "isInTouchMode"    # Z

    .line 230
    return-void
.end method

.method public greylist-max-o sendAccessibilityEventInternal(I)V
    .locals 0
    .param p1, "eventType"    # I

    .line 213
    return-void
.end method

.method public whitelist setCurrentTab(I)V
    .locals 5
    .param p1, "index"    # I

    .line 429
    if-ltz p1, :cond_5

    iget-object v0, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    if-ne p1, v0, :cond_1

    .line 434
    return-void

    .line 438
    :cond_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 439
    iget-object v2, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost$TabSpec;

    invoke-static {v0}, Landroid/widget/TabHost$TabSpec;->-$$Nest$fgetmContentStrategy(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/TabHost$ContentStrategy;->tabClosed()V

    .line 442
    :cond_2
    iput p1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    .line 443
    iget-object v0, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost$TabSpec;

    .line 447
    .local v0, "spec":Landroid/widget/TabHost$TabSpec;
    iget-object v2, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    iget v3, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-virtual {v2, v3}, Landroid/widget/TabWidget;->focusCurrentTab(I)V

    .line 450
    invoke-static {v0}, Landroid/widget/TabHost$TabSpec;->-$$Nest$fgetmContentStrategy(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$ContentStrategy;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/TabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    .line 452
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_3

    .line 453
    iget-object v2, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 454
    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    :cond_3
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_4

    .line 464
    iget-object v1, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 468
    :cond_4
    invoke-direct {p0}, Landroid/widget/TabHost;->invokeOnTabChangeListener()V

    .line 469
    return-void

    .line 430
    .end local v0    # "spec":Landroid/widget/TabHost$TabSpec;
    :cond_5
    :goto_0
    return-void
.end method

.method public whitelist setCurrentTabByTag(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 329
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 330
    iget-object v2, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v2}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 332
    goto :goto_1

    .line 329
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    :goto_1
    return-void
.end method

.method public whitelist setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/TabHost$OnTabChangeListener;

    .line 478
    iput-object p1, p0, Landroid/widget/TabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 479
    return-void
.end method

.method public whitelist setup()V
    .locals 2

    .line 161
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    .line 162
    if-eqz v0, :cond_1

    .line 169
    new-instance v0, Landroid/widget/TabHost$1;

    invoke-direct {v0, p0}, Landroid/widget/TabHost$1;-><init>(Landroid/widget/TabHost;)V

    iput-object v0, p0, Landroid/widget/TabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 192
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    new-instance v1, Landroid/widget/TabHost$2;

    invoke-direct {v1, p0}, Landroid/widget/TabHost$2;-><init>(Landroid/widget/TabHost;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setTabSelectionListener(Landroid/widget/TabWidget$OnTabSelectionChanged;)V

    .line 201
    const v0, 0x1020011

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 202
    if-eqz v0, :cond_0

    .line 207
    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setup(Landroid/app/LocalActivityManager;)V
    .locals 0
    .param p1, "activityGroup"    # Landroid/app/LocalActivityManager;

    .line 223
    invoke-virtual {p0}, Landroid/widget/TabHost;->setup()V

    .line 224
    iput-object p1, p0, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 225
    return-void
.end method
