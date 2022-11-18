.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$CheckedItemAdapter;,
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$ButtonHandler;
    }
.end annotation


# static fields
.field public static final greylist-max-o MICRO:I = 0x1


# instance fields
.field private greylist-max-o mAdapter:Landroid/widget/ListAdapter;

.field public blacklist mAlertControllerExt:Landroid/app/dialog/IAlertControllerExt;

.field private greylist-max-o mAlertDialogLayout:I

.field private final greylist-max-o mButtonHandler:Landroid/view/View$OnClickListener;

.field private greylist-max-o mButtonNegative:Landroid/widget/Button;

.field private greylist-max-o mButtonNegativeMessage:Landroid/os/Message;

.field private greylist-max-o mButtonNegativeText:Ljava/lang/CharSequence;

.field private greylist-max-o mButtonNeutral:Landroid/widget/Button;

.field private greylist-max-o mButtonNeutralMessage:Landroid/os/Message;

.field private greylist-max-o mButtonNeutralText:Ljava/lang/CharSequence;

.field private greylist-max-o mButtonPanelLayoutHint:I

.field private greylist-max-o mButtonPanelSideLayout:I

.field private greylist-max-o mButtonPositive:Landroid/widget/Button;

.field private greylist-max-o mButtonPositiveMessage:Landroid/os/Message;

.field private greylist-max-o mButtonPositiveText:Ljava/lang/CharSequence;

.field private greylist-max-o mCheckedItem:I

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist mCustomTitleView:Landroid/view/View;

.field private final greylist-max-o mDialogInterface:Landroid/content/DialogInterface;

.field private greylist mForceInverseBackground:Z

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mIcon:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mIconId:I

.field private greylist-max-o mIconView:Landroid/widget/ImageView;

.field private greylist-max-o mListItemLayout:I

.field private greylist-max-o mListLayout:I

.field protected greylist-max-o mListView:Landroid/widget/ListView;

.field protected greylist-max-o mMessage:Ljava/lang/CharSequence;

.field private greylist-max-o mMessageHyphenationFrequency:Ljava/lang/Integer;

.field private greylist-max-o mMessageMovementMethod:Landroid/text/method/MovementMethod;

.field protected greylist-max-o mMessageView:Landroid/widget/TextView;

.field private greylist-max-o mMultiChoiceItemLayout:I

.field protected greylist-max-o mScrollView:Landroid/widget/ScrollView;

.field private greylist-max-o mShowTitle:Z

.field private greylist-max-o mSingleChoiceItemLayout:I

.field private greylist mTitle:Ljava/lang/CharSequence;

.field private greylist-max-o mTitleView:Landroid/widget/TextView;

.field private greylist mView:Landroid/view/View;

.field private greylist-max-o mViewLayoutResId:I

.field private greylist-max-o mViewSpacingBottom:I

.field private greylist-max-o mViewSpacingLeft:I

.field private greylist-max-o mViewSpacingRight:I

.field private greylist-max-o mViewSpacingSpecified:Z

.field private greylist-max-o mViewSpacingTop:I

.field protected final greylist-max-o mWindow:Landroid/view/Window;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmButtonNegative(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonNegativeMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonNeutral(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonNeutralMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonPositive(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmButtonPositiveMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDialogInterface(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListItemLayout(Lcom/android/internal/app/AlertController;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListLayout(Lcom/android/internal/app/AlertController;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMultiChoiceItemLayout(Lcom/android/internal/app/AlertController;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSingleChoiceItemLayout(Lcom/android/internal/app/AlertController;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAdapter(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCheckedItem(Lcom/android/internal/app/AlertController;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    return-void
.end method

.method protected constructor greylist <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 120
    iput v0, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 137
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 148
    iput v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 152
    new-instance v1, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 227
    const-class v1, Landroid/app/dialog/IAlertControllerExt;

    invoke-static {v1}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/dialog/IAlertControllerExt;

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mAlertControllerExt:Landroid/app/dialog/IAlertControllerExt;

    .line 232
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 233
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 234
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 235
    new-instance v1, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 237
    sget-object v1, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const/4 v2, 0x0

    const v3, 0x101005d

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 240
    .local v1, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0xa

    const v3, 0x109002a

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 242
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    .line 244
    const/16 v0, 0xf

    const v2, 0x1090111

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    .line 247
    const/16 v0, 0x10

    const v2, 0x1090013

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    .line 250
    const/16 v0, 0x15

    const v2, 0x1090012

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    .line 253
    const/16 v0, 0xe

    const v2, 0x1090011

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    .line 256
    const/16 v0, 0x14

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    .line 258
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 261
    invoke-virtual {p3, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 266
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertControllerExt:Landroid/app/dialog/IAlertControllerExt;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/app/dialog/IAlertControllerExt;->isOplusStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertControllerExt:Landroid/app/dialog/IAlertControllerExt;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/dialog/IAlertControllerExt;->init(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    .line 271
    :cond_0
    return-void
.end method

.method static greylist-max-o canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .line 274
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 275
    return v1

    .line 278
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 279
    return v2

    .line 282
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 283
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 284
    .local v3, "i":I
    :cond_2
    if-lez v3, :cond_3

    .line 285
    add-int/lit8 v3, v3, -0x1

    .line 286
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 287
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 288
    return v1

    .line 292
    :cond_3
    return v2
.end method

.method private greylist-max-o centerButton(Landroid/widget/Button;)V
    .locals 5
    .param p1, "button"    # Landroid/widget/Button;

    .line 885
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 886
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 887
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 888
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x1020379

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 890
    .local v1, "leftSpacer":Landroid/view/View;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 891
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 893
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020479

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 894
    .local v3, "rightSpacer":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 895
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 897
    :cond_1
    return-void
.end method

.method public static final greylist-max-o create(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/android/internal/app/AlertController;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "window"    # Landroid/view/Window;

    .line 209
    sget-object v0, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const/4 v1, 0x0

    const v2, 0x101005d

    const v3, 0x1030223

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 212
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 213
    .local v1, "controllerType":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    packed-switch v1, :pswitch_data_0

    .line 219
    new-instance v2, Lcom/android/internal/app/AlertController;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    return-object v2

    .line 217
    :pswitch_0
    new-instance v2, Lcom/android/internal/app/MicroAlertController;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/app/MicroAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist-max-o manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "upIndicator"    # Landroid/view/View;
    .param p2, "downIndicator"    # Landroid/view/View;

    .line 812
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    .line 813
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 815
    :cond_1
    if-eqz p2, :cond_3

    .line 816
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 818
    :cond_3
    return-void
.end method

.method private blacklist requestFocusForContent(Landroid/view/View;)Z
    .locals 3
    .param p1, "content"    # Landroid/view/View;

    .line 671
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    return v0

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 676
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 677
    return v0

    .line 680
    :cond_1
    return v2
.end method

.method private blacklist requestFocusForDefaultButton()V
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 689
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 691
    :cond_2
    :goto_0
    return-void
.end method

.method private greylist-max-o resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "customPanel"    # Landroid/view/View;
    .param p2, "defaultPanel"    # Landroid/view/View;

    .line 543
    if-nez p1, :cond_1

    .line 545
    instance-of v0, p2, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 546
    move-object v0, p2

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 549
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 553
    :cond_1
    if-eqz p2, :cond_2

    .line 554
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 555
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 556
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 561
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_2
    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 562
    move-object v0, p1

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 565
    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private greylist-max-o selectContentView()I
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertControllerExt:Landroid/app/dialog/IAlertControllerExt;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/app/dialog/IAlertControllerExt;->isCenterDialog()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertControllerExt:Landroid/app/dialog/IAlertControllerExt;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Landroid/app/dialog/IAlertControllerExt;->isOplusStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xc090406

    return v0

    .line 312
    :cond_0
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_1

    .line 313
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    return v0

    .line 315
    :cond_1
    iget v1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 316
    return v0

    .line 319
    :cond_2
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    return v0
.end method

.method private greylist-max-o setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 22
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "topPanel"    # Landroid/view/View;
    .param p3, "contentPanel"    # Landroid/view/View;
    .param p4, "customPanel"    # Landroid/view/View;
    .param p5, "buttonPanel"    # Landroid/view/View;
    .param p6, "hasTitle"    # Z
    .param p7, "hasCustomView"    # Z
    .param p8, "hasButtons"    # Z

    .line 901
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 902
    .local v2, "fullDark":I
    const/4 v3, 0x0

    .line 903
    .local v3, "topDark":I
    const/4 v4, 0x0

    .line 904
    .local v4, "centerDark":I
    const/4 v5, 0x0

    .line 905
    .local v5, "bottomDark":I
    const/4 v6, 0x0

    .line 906
    .local v6, "fullBright":I
    const/4 v7, 0x0

    .line 907
    .local v7, "topBright":I
    const/4 v8, 0x0

    .line 908
    .local v8, "centerBright":I
    const/4 v9, 0x0

    .line 909
    .local v9, "bottomBright":I
    const/4 v10, 0x0

    .line 913
    .local v10, "bottomMedium":I
    const/16 v11, 0x11

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 915
    .local v11, "needsDefaultBackgrounds":Z
    if-eqz v11, :cond_0

    .line 916
    const v2, 0x1080723

    .line 917
    const v3, 0x1080731

    .line 918
    const v4, 0x1080720

    .line 919
    const v5, 0x108071d

    .line 920
    const v6, 0x1080722

    .line 921
    const v7, 0x1080730

    .line 922
    const v8, 0x108071f

    .line 923
    const v9, 0x108071c

    .line 924
    const v10, 0x108071e

    .line 927
    :cond_0
    const/4 v13, 0x5

    invoke-virtual {v1, v13, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 928
    invoke-virtual {v1, v12, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 929
    const/4 v13, 0x6

    invoke-virtual {v1, v13, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 930
    const/4 v13, 0x2

    invoke-virtual {v1, v13, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 940
    const/4 v13, 0x4

    new-array v14, v13, [Landroid/view/View;

    .line 941
    .local v14, "views":[Landroid/view/View;
    new-array v15, v13, [Z

    .line 942
    .local v15, "light":[Z
    const/16 v16, 0x0

    .line 943
    .local v16, "lastView":Landroid/view/View;
    const/16 v17, 0x0

    .line 945
    .local v17, "lastLight":Z
    const/16 v18, 0x0

    .line 946
    .local v18, "pos":I
    const/4 v13, 0x0

    if-eqz p6, :cond_1

    .line 947
    aput-object p2, v14, v18

    .line 948
    aput-boolean v13, v15, v18

    .line 949
    add-int/lit8 v18, v18, 0x1

    .line 957
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v12, 0x8

    if-ne v13, v12, :cond_2

    const/4 v13, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v13, p3

    :goto_0
    aput-object v13, v14, v18

    .line 958
    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    :goto_1
    aput-boolean v13, v15, v18

    .line 959
    const/4 v13, 0x1

    add-int/lit8 v18, v18, 0x1

    .line 961
    if-eqz p7, :cond_4

    .line 962
    aput-object p4, v14, v18

    .line 963
    iget-boolean v13, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    aput-boolean v13, v15, v18

    .line 964
    add-int/lit8 v18, v18, 0x1

    .line 967
    :cond_4
    if-eqz p8, :cond_5

    .line 968
    aput-object p5, v14, v18

    .line 969
    const/4 v13, 0x1

    aput-boolean v13, v15, v18

    .line 972
    :cond_5
    const/4 v13, 0x0

    .line 973
    .local v13, "setView":Z
    const/16 v18, 0x0

    move-object/from16 v12, v16

    move/from16 v21, v18

    move/from16 v18, v3

    move/from16 v3, v21

    .end local v16    # "lastView":Landroid/view/View;
    .local v3, "pos":I
    .local v12, "lastView":Landroid/view/View;
    .local v18, "topDark":I
    :goto_2
    move/from16 v19, v4

    .end local v4    # "centerDark":I
    .local v19, "centerDark":I
    array-length v4, v14

    if-ge v3, v4, :cond_b

    .line 974
    aget-object v4, v14, v3

    .line 975
    .local v4, "v":Landroid/view/View;
    if-nez v4, :cond_6

    .line 976
    move/from16 v20, v7

    goto :goto_7

    .line 979
    :cond_6
    if-eqz v12, :cond_a

    .line 980
    if-nez v13, :cond_8

    .line 981
    move/from16 v20, v7

    if-eqz v17, :cond_7

    goto :goto_3

    :cond_7
    move/from16 v7, v18

    .end local v7    # "topBright":I
    .local v20, "topBright":I
    :goto_3
    invoke-virtual {v12, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 983
    .end local v20    # "topBright":I
    .restart local v7    # "topBright":I
    :cond_8
    move/from16 v20, v7

    .end local v7    # "topBright":I
    .restart local v20    # "topBright":I
    if-eqz v17, :cond_9

    move v7, v8

    goto :goto_4

    :cond_9
    move/from16 v7, v19

    :goto_4
    invoke-virtual {v12, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 985
    :goto_5
    const/4 v13, 0x1

    goto :goto_6

    .line 979
    .end local v20    # "topBright":I
    .restart local v7    # "topBright":I
    :cond_a
    move/from16 v20, v7

    .line 988
    .end local v7    # "topBright":I
    .restart local v20    # "topBright":I
    :goto_6
    move-object v7, v4

    .line 989
    .end local v12    # "lastView":Landroid/view/View;
    .local v7, "lastView":Landroid/view/View;
    aget-boolean v12, v15, v3

    move/from16 v17, v12

    move-object v12, v7

    .line 973
    .end local v4    # "v":Landroid/view/View;
    .end local v7    # "lastView":Landroid/view/View;
    .restart local v12    # "lastView":Landroid/view/View;
    :goto_7
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v19

    move/from16 v7, v20

    goto :goto_2

    .line 992
    .end local v20    # "topBright":I
    .local v7, "topBright":I
    :cond_b
    move/from16 v20, v7

    .end local v7    # "topBright":I
    .restart local v20    # "topBright":I
    if-eqz v12, :cond_10

    .line 993
    if-eqz v13, :cond_e

    .line 994
    const/4 v4, 0x7

    invoke-virtual {v1, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 995
    const/16 v4, 0x8

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 996
    const/4 v4, 0x3

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 1000
    nop

    .line 1001
    if-eqz v17, :cond_d

    if-eqz p8, :cond_c

    move v4, v10

    goto :goto_8

    :cond_c
    move v4, v9

    goto :goto_8

    :cond_d
    move v4, v5

    .line 1000
    :goto_8
    invoke-virtual {v12, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_a

    .line 1003
    :cond_e
    const/4 v4, 0x4

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 1004
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 1006
    if-eqz v17, :cond_f

    move v4, v6

    goto :goto_9

    :cond_f
    move v4, v2

    :goto_9
    invoke-virtual {v12, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1010
    :cond_10
    :goto_a
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 1011
    .local v4, "listView":Landroid/widget/ListView;
    if-eqz v4, :cond_12

    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v7, :cond_12

    .line 1012
    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1013
    iget v7, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 1014
    .local v7, "checkedItem":I
    const/4 v0, -0x1

    if-le v7, v0, :cond_11

    .line 1015
    const/4 v0, 0x1

    invoke-virtual {v4, v7, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1016
    const/16 v0, 0x13

    .line 1017
    move/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "fullDark":I
    .local v16, "fullDark":I
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 1016
    invoke-virtual {v4, v7, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_b

    .line 1014
    .end local v16    # "fullDark":I
    .restart local v2    # "fullDark":I
    :cond_11
    move/from16 v16, v2

    .end local v2    # "fullDark":I
    .restart local v16    # "fullDark":I
    goto :goto_b

    .line 1011
    .end local v7    # "checkedItem":I
    .end local v16    # "fullDark":I
    .restart local v2    # "fullDark":I
    :cond_12
    move/from16 v16, v2

    .line 1020
    .end local v2    # "fullDark":I
    .restart local v16    # "fullDark":I
    :goto_b
    return-void
.end method

.method private greylist-max-o setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "customPanel"    # Landroid/view/ViewGroup;

    .line 695
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .local v0, "customView":Landroid/view/View;
    goto :goto_0

    .line 697
    .end local v0    # "customView":Landroid/view/View;
    :cond_0
    iget v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 699
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 700
    .local v0, "customView":Landroid/view/View;
    goto :goto_0

    .line 701
    .end local v0    # "customView":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    .line 704
    .restart local v0    # "customView":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 705
    .local v1, "hasCustomView":Z
    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 706
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 710
    :cond_4
    if-eqz v1, :cond_7

    .line 711
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x102002b

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 712
    .local v2, "custom":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    iget-boolean v3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v3, :cond_5

    .line 715
    iget v3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    iget v5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    iget v6, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 719
    :cond_5
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_6

    .line 720
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 722
    .end local v2    # "custom":Landroid/widget/FrameLayout;
    :cond_6
    goto :goto_1

    .line 723
    :cond_7
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 725
    :goto_1
    return-void
.end method

.method private greylist-max-o setupView()V
    .locals 25

    .line 571
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mAlertControllerExt:Landroid/app/dialog/IAlertControllerExt;

    if-eqz v0, :cond_0

    iget-object v1, v9, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Landroid/app/dialog/IAlertControllerExt;->isOplusStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mAlertControllerExt:Landroid/app/dialog/IAlertControllerExt;

    invoke-interface {v0}, Landroid/app/dialog/IAlertControllerExt;->setupView()V

    .line 573
    :cond_0
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x1020419

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 574
    .local v10, "parentPanel":Landroid/view/View;
    const v0, 0x1020544

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 575
    .local v11, "defaultTopPanel":Landroid/view/View;
    const v1, 0x1020263

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 576
    .local v12, "defaultContentPanel":Landroid/view/View;
    const v2, 0x1020228

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 579
    .local v13, "defaultButtonPanel":Landroid/view/View;
    const v3, 0x1020287

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/view/ViewGroup;

    .line 580
    .local v14, "customPanel":Landroid/view/ViewGroup;
    invoke-direct {v9, v14}, Lcom/android/internal/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 582
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 583
    .local v15, "customTopPanel":Landroid/view/View;
    invoke-virtual {v14, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 584
    .local v8, "customContentPanel":Landroid/view/View;
    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 587
    .local v7, "customButtonPanel":Landroid/view/View;
    invoke-direct {v9, v15, v11}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 588
    .local v6, "topPanel":Landroid/view/ViewGroup;
    invoke-direct {v9, v8, v12}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 589
    .local v5, "contentPanel":Landroid/view/ViewGroup;
    invoke-direct {v9, v7, v13}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 591
    .local v4, "buttonPanel":Landroid/view/ViewGroup;
    invoke-virtual {v9, v5}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 592
    invoke-virtual {v9, v4}, Lcom/android/internal/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 593
    invoke-virtual {v9, v6}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    .line 595
    const/16 v0, 0x8

    const/4 v2, 0x0

    if-eqz v14, :cond_1

    .line 596
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    move/from16 v16, v3

    .line 597
    .local v16, "hasCustomPanel":Z
    if-eqz v6, :cond_2

    .line 598
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 599
    .local v3, "hasTopPanel":Z
    :goto_1
    if-eqz v4, :cond_3

    .line 600
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    move v1, v0

    .line 602
    .local v1, "hasButtonPanel":Z
    invoke-virtual {v10}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 603
    if-eqz v16, :cond_4

    move-object v0, v14

    goto :goto_3

    :cond_4
    move-object v0, v5

    .line 604
    .local v0, "content":Landroid/view/View;
    :goto_3
    invoke-direct {v9, v0}, Lcom/android/internal/app/AlertController;->requestFocusForContent(Landroid/view/View;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 605
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/AlertController;->requestFocusForDefaultButton()V

    .line 609
    .end local v0    # "content":Landroid/view/View;
    :cond_5
    if-nez v1, :cond_7

    .line 610
    if-eqz v5, :cond_6

    .line 611
    const v0, 0x1020524

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 612
    .local v0, "spacer":Landroid/view/View;
    if-eqz v0, :cond_6

    .line 613
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 616
    .end local v0    # "spacer":Landroid/view/View;
    :cond_6
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    goto :goto_4

    .line 609
    :cond_7
    const/4 v2, 0x1

    .line 618
    :goto_4
    if-eqz v3, :cond_e

    .line 620
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_8

    .line 621
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 625
    :cond_8
    const/4 v0, 0x0

    .line 626
    .local v0, "divider":Landroid/view/View;
    iget-object v2, v9, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v2, :cond_a

    iget-object v2, v9, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-nez v2, :cond_a

    if-eqz v16, :cond_9

    goto :goto_5

    .line 635
    :cond_9
    const v2, 0x1020537

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    .line 627
    :cond_a
    :goto_5
    if-nez v16, :cond_b

    .line 628
    const v2, 0x1020536

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 630
    :cond_b
    if-nez v0, :cond_c

    .line 631
    const v2, 0x1020535

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 638
    :cond_c
    :goto_6
    if-eqz v0, :cond_d

    .line 639
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 641
    .end local v0    # "divider":Landroid/view/View;
    :cond_d
    goto :goto_7

    .line 642
    :cond_e
    if-eqz v5, :cond_f

    .line 643
    const v0, 0x1020525

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 644
    .local v0, "spacer":Landroid/view/View;
    if-eqz v0, :cond_f

    .line 645
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 650
    .end local v0    # "spacer":Landroid/view/View;
    :cond_f
    :goto_7
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    instance-of v2, v0, Lcom/android/internal/app/AlertController$RecycleListView;

    if-eqz v2, :cond_10

    .line 651
    check-cast v0, Lcom/android/internal/app/AlertController$RecycleListView;

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    .line 654
    :cond_10
    if-nez v16, :cond_15

    .line 655
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_11

    goto :goto_8

    :cond_11
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 656
    .local v0, "content":Landroid/view/View;
    :goto_8
    if-eqz v0, :cond_14

    .line 657
    if-eqz v3, :cond_12

    const/16 v17, 0x1

    goto :goto_9

    :cond_12
    const/16 v17, 0x0

    .line 658
    :goto_9
    if-eqz v1, :cond_13

    const/4 v2, 0x2

    goto :goto_a

    :cond_13
    const/4 v2, 0x0

    :goto_a
    or-int v2, v17, v2

    .line 659
    .local v2, "indicators":I
    move/from16 v17, v1

    .end local v1    # "hasButtonPanel":Z
    .local v17, "hasButtonPanel":Z
    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setScrollIndicators(II)V

    goto :goto_b

    .line 656
    .end local v2    # "indicators":I
    .end local v17    # "hasButtonPanel":Z
    .restart local v1    # "hasButtonPanel":Z
    :cond_14
    move/from16 v17, v1

    .end local v1    # "hasButtonPanel":Z
    .restart local v17    # "hasButtonPanel":Z
    goto :goto_b

    .line 654
    .end local v0    # "content":Landroid/view/View;
    .end local v17    # "hasButtonPanel":Z
    .restart local v1    # "hasButtonPanel":Z
    :cond_15
    move/from16 v17, v1

    .line 663
    .end local v1    # "hasButtonPanel":Z
    .restart local v17    # "hasButtonPanel":Z
    :goto_b
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/R$styleable;->AlertDialog:[I

    move/from16 v19, v3

    .end local v3    # "hasTopPanel":Z
    .local v19, "hasTopPanel":Z
    const v3, 0x101005d

    move-object/from16 v20, v4

    const/4 v4, 0x0

    .end local v4    # "buttonPanel":Landroid/view/ViewGroup;
    .local v20, "buttonPanel":Landroid/view/ViewGroup;
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v18

    .line 665
    .local v18, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v6

    move-object v3, v5

    move-object v4, v14

    move-object/from16 v21, v5

    .end local v5    # "contentPanel":Landroid/view/ViewGroup;
    .local v21, "contentPanel":Landroid/view/ViewGroup;
    move-object/from16 v5, v20

    move-object/from16 v22, v6

    .end local v6    # "topPanel":Landroid/view/ViewGroup;
    .local v22, "topPanel":Landroid/view/ViewGroup;
    move/from16 v6, v19

    move-object/from16 v23, v7

    .end local v7    # "customButtonPanel":Landroid/view/View;
    .local v23, "customButtonPanel":Landroid/view/View;
    move/from16 v7, v16

    move-object/from16 v24, v8

    .end local v8    # "customContentPanel":Landroid/view/View;
    .local v24, "customContentPanel":Landroid/view/View;
    move/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    .line 667
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 668
    return-void
.end method

.method private static greylist-max-o shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 203
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 204
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x112000d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 205
    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method


# virtual methods
.method public greylist getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .line 508
    packed-switch p1, :pswitch_data_0

    .line 516
    const/4 v0, 0x0

    return-object v0

    .line 510
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0

    .line 512
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0

    .line 514
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o getIconAttributeResId(I)I
    .locals 3
    .param p1, "attrId"    # I

    .line 492
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 493
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 494
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public greylist getListView()Landroid/widget/ListView;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public greylist installContent()V
    .locals 2

    .line 302
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->selectContentView()I

    move-result v0

    .line 303
    .local v0, "contentView":I
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 304
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 305
    return-void
.end method

.method public greylist-max-o installContent(Lcom/android/internal/app/AlertController$AlertParams;)V
    .locals 0
    .param p1, "params"    # Lcom/android/internal/app/AlertController$AlertParams;

    .line 296
    invoke-virtual {p1, p0}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 298
    return-void
.end method

.method public greylist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 523
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 529
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .line 418
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 422
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 440
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 426
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 427
    goto :goto_0

    .line 430
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 431
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 432
    goto :goto_0

    .line 435
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 436
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 437
    nop

    .line 442
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o setButtonPanelLayoutHint(I)V
    .locals 0
    .param p1, "layoutHint"    # I

    .line 399
    iput p1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 400
    return-void
.end method

.method public greylist setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .line 336
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 337
    return-void
.end method

.method public greylist setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 453
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 455
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 456
    if-eqz p1, :cond_0

    .line 457
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 460
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    :cond_1
    :goto_0
    return-void
.end method

.method public greylist setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 472
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 473
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 475
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 476
    if-eqz p1, :cond_0

    .line 477
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 480
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 483
    :cond_1
    :goto_0
    return-void
.end method

.method public greylist-max-o setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .line 498
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    .line 499
    return-void
.end method

.method public greylist setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 341
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 342
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :cond_0
    return-void
.end method

.method public greylist-max-o setMessageHyphenationFrequency(I)V
    .locals 1
    .param p1, "hyphenationFrequency"    # I

    .line 356
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageHyphenationFrequency:Ljava/lang/Integer;

    .line 357
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    .line 360
    :cond_0
    return-void
.end method

.method public greylist-max-o setMessageMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1
    .param p1, "movementMethod"    # Landroid/text/method/MovementMethod;

    .line 348
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessageMovementMethod:Landroid/text/method/MovementMethod;

    .line 349
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 352
    :cond_0
    return-void
.end method

.method public greylist setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 324
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 325
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 329
    return-void
.end method

.method public greylist-max-o setView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 367
    iput p1, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 369
    return-void
.end method

.method public greylist setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 376
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 377
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 378
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 379
    return-void
.end method

.method public greylist-max-o setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .line 386
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 387
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 389
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    .line 390
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    .line 391
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    .line 392
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 393
    return-void
.end method

.method protected greylist-max-o setupButtons(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .line 821
    const/4 v0, 0x1

    .line 822
    .local v0, "BIT_BUTTON_POSITIVE":I
    const/4 v1, 0x2

    .line 823
    .local v1, "BIT_BUTTON_NEGATIVE":I
    const/4 v2, 0x4

    .line 824
    .local v2, "BIT_BUTTON_NEUTRAL":I
    const/4 v3, 0x0

    .line 825
    .local v3, "whichButtons":I
    const v4, 0x1020019

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 826
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 828
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 829
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 831
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 832
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 833
    or-int/2addr v3, v0

    .line 836
    :goto_0
    const v4, 0x102001a

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 837
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 839
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 840
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 842
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 843
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 845
    or-int/2addr v3, v1

    .line 848
    :goto_1
    const v4, 0x102001b

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 849
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 851
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 852
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 854
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 855
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 857
    or-int/2addr v3, v2

    .line 860
    :goto_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 865
    if-ne v3, v0, :cond_3

    .line 866
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 867
    :cond_3
    if-ne v3, v1, :cond_4

    .line 868
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 869
    :cond_4
    if-ne v3, v2, :cond_5

    .line 870
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 874
    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    const/4 v6, 0x1

    :cond_6
    move v4, v6

    .line 875
    .local v4, "hasButtons":Z
    if-nez v4, :cond_7

    .line 876
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 880
    :cond_7
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mAlertControllerExt:Landroid/app/dialog/IAlertControllerExt;

    if-eqz v5, :cond_8

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-interface {v5, v6}, Landroid/app/dialog/IAlertControllerExt;->isOplusStyle(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mAlertControllerExt:Landroid/app/dialog/IAlertControllerExt;

    invoke-interface {v5, p1}, Landroid/app/dialog/IAlertControllerExt;->setupButtons(Landroid/view/ViewGroup;)V

    .line 882
    :cond_8
    return-void
.end method

.method protected greylist-max-o setupContent(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .line 774
    const v0, 0x102048c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 775
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 778
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 779
    if-nez v0, :cond_0

    .line 780
    return-void

    .line 783
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 784
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageMovementMethod:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_1

    .line 786
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 788
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageHyphenationFrequency:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 789
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    goto :goto_0

    .line 792
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 793
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 795
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 796
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 797
    .local v0, "scrollParent":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 798
    .local v1, "childIndex":I
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 799
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 801
    .end local v0    # "scrollParent":Landroid/view/ViewGroup;
    .end local v1    # "childIndex":I
    goto :goto_0

    .line 802
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 807
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertControllerExt:Landroid/app/dialog/IAlertControllerExt;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Landroid/app/dialog/IAlertControllerExt;->isOplusStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAlertControllerExt:Landroid/app/dialog/IAlertControllerExt;

    invoke-interface {v0, p1}, Landroid/app/dialog/IAlertControllerExt;->setupContent(Landroid/view/ViewGroup;)V

    .line 809
    :cond_5
    return-void
.end method

.method protected greylist-max-o setupTitle(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .line 728
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const v1, 0x102053a

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    if-eqz v0, :cond_0

    .line 730
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 733
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 736
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 737
    .local v1, "titleTemplate":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 738
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "titleTemplate":Landroid/view/View;
    goto/16 :goto_0

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x1020006

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 741
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 742
    .local v0, "hasTextTitle":Z
    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    if-eqz v3, :cond_3

    .line 744
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x10201d9

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 745
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-eqz v1, :cond_1

    .line 751
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 752
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 753
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 757
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 758
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 759
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 760
    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    .line 757
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 761
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 765
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 766
    .restart local v1    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 767
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 768
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 771
    .end local v0    # "hasTextTitle":Z
    .end local v1    # "titleTemplate":Landroid/view/View;
    :goto_0
    return-void
.end method
