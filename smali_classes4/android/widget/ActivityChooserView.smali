.class public Landroid/widget/ActivityChooserView;
.super Landroid/view/ViewGroup;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/widget/ActivityChooserModel$ActivityChooserModelClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;,
        Landroid/widget/ActivityChooserView$Callbacks;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ActivityChooserView"


# instance fields
.field private final greylist-max-o mActivityChooserContent:Landroid/widget/LinearLayout;

.field private final greylist-max-o mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

.field private final greylist-max-o mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

.field private final greylist-max-o mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

.field private greylist-max-o mDefaultActionButtonContentDescription:I

.field private final greylist-max-o mDefaultActivityButton:Landroid/widget/FrameLayout;

.field private final greylist-max-o mDefaultActivityButtonImage:Landroid/widget/ImageView;

.field private final greylist-max-o mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

.field private final greylist-max-o mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

.field private greylist-max-o mInitialActivityCount:I

.field private greylist-max-o mIsAttachedToWindow:Z

.field private greylist-max-o mIsSelectingDefaultActivity:Z

.field private final greylist-max-o mListPopupMaxWidth:I

.field private greylist-max-o mListPopupWindow:Landroid/widget/ListPopupWindow;

.field private final greylist-max-o mModelDataSetOberver:Landroid/database/DataSetObserver;

.field private greylist-max-o mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final greylist-max-o mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field greylist-max-o mProvider:Landroid/view/ActionProvider;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdapter(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    .locals 0

    iget-object p0, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultActivityButton(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpandActivityOverflowButton(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitialActivityCount(Landroid/widget/ActivityChooserView;)I
    .locals 0

    iget p0, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSelectingDefaultActivity(Landroid/widget/ActivityChooserView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmModelDataSetOberver(Landroid/widget/ActivityChooserView;)Landroid/database/DataSetObserver;
    .locals 0

    iget-object p0, p0, Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDismissListener(Landroid/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsSelectingDefaultActivity(Landroid/widget/ActivityChooserView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetListPopupWindow(Landroid/widget/ActivityChooserView;)Landroid/widget/ListPopupWindow;
    .locals 0

    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->getListPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mshowPopupUnchecked(Landroid/widget/ActivityChooserView;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserView;->showPopupUnchecked(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateAppearance(Landroid/widget/ActivityChooserView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->updateAppearance()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 215
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 231
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 125
    new-instance v0, Landroid/widget/ActivityChooserView$1;

    invoke-direct {v0, p0}, Landroid/widget/ActivityChooserView$1;-><init>(Landroid/widget/ActivityChooserView;)V

    iput-object v0, p0, Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    .line 139
    new-instance v0, Landroid/widget/ActivityChooserView$2;

    invoke-direct {v0, p0}, Landroid/widget/ActivityChooserView$2;-><init>(Landroid/widget/ActivityChooserView;)V

    iput-object v0, p0, Landroid/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 173
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 233
    sget-object v1, Lcom/android/internal/R$styleable;->ActivityChooserView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 235
    .local v1, "attributesArray":Landroid/content/res/TypedArray;
    sget-object v4, Lcom/android/internal/R$styleable;->ActivityChooserView:[I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v1

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Landroid/widget/ActivityChooserView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 238
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 242
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 245
    .local v0, "expandActivityOverflowButtonDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 247
    iget-object v3, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 248
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x1090025

    invoke-virtual {v3, v4, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 250
    new-instance v2, Landroid/widget/ActivityChooserView$Callbacks;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Landroid/widget/ActivityChooserView$Callbacks;-><init>(Landroid/widget/ActivityChooserView;Landroid/widget/ActivityChooserView$Callbacks-IA;)V

    iput-object v2, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    .line 252
    const v5, 0x10201ca

    invoke-virtual {p0, v5}, Landroid/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    .line 253
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    .line 255
    const v5, 0x102029c

    invoke-virtual {p0, v5}, Landroid/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    .line 256
    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 258
    const v6, 0x102032b

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    .line 260
    const v5, 0x10202b7

    invoke-virtual {p0, v5}, Landroid/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 261
    .local v5, "expandButton":Landroid/widget/FrameLayout;
    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    new-instance v2, Landroid/widget/ActivityChooserView$3;

    invoke-direct {v2, p0}, Landroid/widget/ActivityChooserView$3;-><init>(Landroid/widget/ActivityChooserView;)V

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 269
    new-instance v2, Landroid/widget/ActivityChooserView$4;

    invoke-direct {v2, p0, v5}, Landroid/widget/ActivityChooserView$4;-><init>(Landroid/widget/ActivityChooserView;Landroid/view/View;)V

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 287
    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    .line 289
    nop

    .line 290
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    .line 291
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    new-instance v2, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-direct {v2, p0, v4}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;-><init>(Landroid/widget/ActivityChooserView;Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter-IA;)V

    iput-object v2, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    .line 294
    new-instance v4, Landroid/widget/ActivityChooserView$5;

    invoke-direct {v4, p0}, Landroid/widget/ActivityChooserView$5;-><init>(Landroid/widget/ActivityChooserView;)V

    invoke-virtual {v2, v4}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 303
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v4, v4, 0x2

    .line 304
    const v6, 0x10500c7

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 303
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ActivityChooserView;->mListPopupMaxWidth:I

    .line 305
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .line 68
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$100(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .line 68
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$200(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .line 68
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$300(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .line 68
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$400(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .line 68
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic blacklist access$500(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .line 68
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private greylist-max-o getListPopupWindow()Landroid/widget/ListPopupWindow;
    .locals 2

    .line 535
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    .line 537
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 538
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 539
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 540
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 541
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 543
    :cond_0
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method private greylist-max-o showPopupUnchecked(I)V
    .locals 9
    .param p1, "maxActivityCount"    # I

    .line 377
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 381
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 383
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    .line 384
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 386
    .local v0, "defaultActivityButtonShown":Z
    :goto_0
    iget-object v3, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v3

    .line 387
    .local v3, "activityCount":I
    if-eqz v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 388
    .local v4, "maxActivityCountOffset":I
    :goto_1
    const v5, 0x7fffffff

    if-eq p1, v5, :cond_2

    add-int v5, p1, v4

    if-le v3, v5, :cond_2

    .line 390
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v5, v1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    .line 391
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    goto :goto_2

    .line 393
    :cond_2
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v5, v2}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    .line 394
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v5, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    .line 397
    :goto_2
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->getListPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v5

    .line 398
    .local v5, "popupWindow":Landroid/widget/ListPopupWindow;
    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v6

    if-nez v6, :cond_6

    .line 399
    iget-boolean v6, p0, Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    if-nez v6, :cond_4

    if-nez v0, :cond_3

    goto :goto_3

    .line 402
    :cond_3
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6, v2, v2}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    goto :goto_4

    .line 400
    :cond_4
    :goto_3
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6, v1, v0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    .line 404
    :goto_4
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->measureContentWidth()I

    move-result v6

    iget v7, p0, Landroid/widget/ActivityChooserView;->mListPopupMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 405
    .local v6, "contentWidth":I
    invoke-virtual {v5, v6}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 406
    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->show()V

    .line 407
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    if-eqz v7, :cond_5

    .line 408
    invoke-virtual {v7, v1}, Landroid/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 410
    :cond_5
    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    const v8, 0x1040114

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 412
    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 414
    .end local v6    # "contentWidth":I
    :cond_6
    return-void

    .line 378
    .end local v0    # "defaultActivityButtonShown":Z
    .end local v3    # "activityCount":I
    .end local v4    # "maxActivityCountOffset":I
    .end local v5    # "popupWindow":Landroid/widget/ListPopupWindow;
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No data model. Did you call #setDataModel?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o updateAppearance()V
    .locals 9

    .line 551
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 552
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_0

    .line 554
    :cond_0
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 557
    :goto_0
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v0

    .line 558
    .local v0, "activityCount":I
    iget-object v3, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getHistorySize()I

    move-result v3

    .line 559
    .local v3, "historySize":I
    if-eq v0, v2, :cond_2

    if-le v0, v2, :cond_1

    if-lez v3, :cond_1

    goto :goto_1

    .line 571
    :cond_1
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 560
    :cond_2
    :goto_1
    iget-object v4, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 561
    iget-object v4, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v4}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 562
    .local v4, "activity":Landroid/content/pm/ResolveInfo;
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 563
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 564
    iget v6, p0, Landroid/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    if-eqz v6, :cond_3

    .line 565
    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 566
    .local v6, "label":Ljava/lang/CharSequence;
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    iget v8, p0, Landroid/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v1

    invoke-virtual {v7, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, "contentDescription":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 570
    .end local v1    # "contentDescription":Ljava/lang/String;
    .end local v4    # "activity":Landroid/content/pm/ResolveInfo;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "label":Ljava/lang/CharSequence;
    :cond_3
    nop

    .line 574
    :goto_2
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 575
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 577
    :cond_4
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 579
    :goto_3
    return-void
.end method


# virtual methods
.method public greylist-max-o dismissPopup()Z
    .locals 2

    .line 422
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->getListPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 424
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 425
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 429
    .end local v0    # "viewTreeObserver":Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getDataModel()Landroid/widget/ActivityChooserModel;
    .locals 1

    .line 491
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o isShowingPopup()Z
    .locals 1

    .line 438
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->getListPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 2

    .line 443
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 444
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 445
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    if-eqz v0, :cond_0

    .line 446
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    .line 448
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    .line 449
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 3

    .line 453
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 454
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 455
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    if-eqz v0, :cond_0

    .line 456
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    .line 458
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 459
    .local v1, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 460
    iget-object v2, p0, Landroid/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 462
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 463
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    .line 465
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    .line 466
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 484
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 485
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    .line 488
    :cond_0
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 470
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    .line 474
    .local v0, "child":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 478
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/ActivityChooserView;->measureChild(Landroid/view/View;II)V

    .line 479
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/ActivityChooserView;->setMeasuredDimension(II)V

    .line 480
    return-void
.end method

.method public greylist-max-o setActivityChooserModel(Landroid/widget/ActivityChooserModel;)V
    .locals 1
    .param p1, "dataModel"    # Landroid/widget/ActivityChooserModel;

    .line 311
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setDataModel(Landroid/widget/ActivityChooserModel;)V

    .line 312
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    .line 314
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->showPopup()Z

    .line 316
    :cond_0
    return-void
.end method

.method public greylist-max-o setDefaultActionButtonContentDescription(I)V
    .locals 0
    .param p1, "resourceId"    # I

    .line 526
    iput p1, p0, Landroid/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    .line 527
    return-void
.end method

.method public greylist-max-o setExpandActivityOverflowButtonContentDescription(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .line 345
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 347
    return-void
.end method

.method public greylist setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 331
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    return-void
.end method

.method public greylist-max-o setInitialActivityCount(I)V
    .locals 0
    .param p1, "itemCount"    # I

    .line 512
    iput p1, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 513
    return-void
.end method

.method public greylist-max-o setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 500
    iput-object p1, p0, Landroid/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 501
    return-void
.end method

.method public greylist-max-o setProvider(Landroid/view/ActionProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/view/ActionProvider;

    .line 354
    iput-object p1, p0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    .line 355
    return-void
.end method

.method public greylist-max-o showPopup()Z
    .locals 2

    .line 363
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    iput-boolean v1, p0, Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    .line 367
    iget v0, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-direct {p0, v0}, Landroid/widget/ActivityChooserView;->showPopupUnchecked(I)V

    .line 368
    const/4 v0, 0x1

    return v0

    .line 364
    :cond_1
    :goto_0
    return v1
.end method
