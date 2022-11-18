.class Landroid/app/Notification$StandardTemplateParams;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StandardTemplateParams"
.end annotation


# static fields
.field public static final blacklist DECORATION_MINIMAL:I = 0x1

.field public static final blacklist DECORATION_PARTIAL:I = 0x2

.field public static blacklist VIEW_TYPE_BIG:I

.field public static blacklist VIEW_TYPE_GROUP_HEADER:I

.field public static blacklist VIEW_TYPE_HEADS_UP:I

.field public static blacklist VIEW_TYPE_MINIMIZED:I

.field public static blacklist VIEW_TYPE_NORMAL:I

.field public static blacklist VIEW_TYPE_PUBLIC:I

.field public static blacklist VIEW_TYPE_UNSPECIFIED:I


# instance fields
.field blacklist allowColorization:Z

.field greylist-max-o headerTextSecondary:Ljava/lang/CharSequence;

.field blacklist mAllowTextWithProgress:Z

.field blacklist mCallStyleActions:Z

.field blacklist mHeaderless:Z

.field blacklist mHideActions:Z

.field blacklist mHideAppName:Z

.field blacklist mHideLeftIcon:Z

.field blacklist mHideProgress:Z

.field blacklist mHideRightIcon:Z

.field blacklist mHideSnoozeButton:Z

.field blacklist mHideSubText:Z

.field blacklist mHideTime:Z

.field blacklist mHideTitle:Z

.field blacklist mHighlightExpander:Z

.field blacklist mPromotedPicture:Landroid/graphics/drawable/Icon;

.field blacklist mTextViewId:I

.field blacklist mTitleViewId:I

.field blacklist mViewType:I

.field greylist-max-o maxRemoteInputHistory:I

.field blacklist summaryText:Ljava/lang/CharSequence;

.field greylist-max-o text:Ljava/lang/CharSequence;

.field greylist-max-o title:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 12551
    const/4 v0, 0x0

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_UNSPECIFIED:I

    .line 12552
    const/4 v0, 0x1

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 12553
    const/4 v0, 0x2

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    .line 12554
    const/4 v0, 0x3

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 12555
    const/4 v0, 0x4

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_MINIMIZED:I

    .line 12556
    const/4 v0, 0x5

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_PUBLIC:I

    .line 12557
    const/4 v0, 0x6

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_GROUP_HEADER:I

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 1

    .line 12534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12559
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_UNSPECIFIED:I

    iput v0, p0, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    .line 12579
    const/4 v0, 0x3

    iput v0, p0, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    .line 12580
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->allowColorization:Z

    .line 12581
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHighlightExpander:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/Notification$StandardTemplateParams-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$StandardTemplateParams;-><init>()V

    return-void
.end method


# virtual methods
.method final blacklist allowTextWithProgress(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "allowTextWithProgress"    # Z

    .line 12660
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mAllowTextWithProgress:Z

    .line 12661
    return-object p0
.end method

.method final blacklist callStyleActions(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "callStyleActions"    # Z

    .line 12655
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    .line 12656
    return-object p0
.end method

.method public blacklist decorationType(I)Landroid/app/Notification$StandardTemplateParams;
    .locals 2
    .param p1, "decorationType"    # I

    .line 12744
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideTitle(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 12747
    const/4 v1, 0x0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 12748
    .local v0, "hideOtherFields":Z
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Notification$StandardTemplateParams;->hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 12749
    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 12750
    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 12751
    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideActions(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 12752
    return-object p0
.end method

.method final blacklist disallowColorization()Landroid/app/Notification$StandardTemplateParams;
    .locals 1

    .line 12716
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->allowColorization:Z

    .line 12717
    return-object p0
.end method

.method final greylist-max-o fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;
    .locals 2
    .param p1, "b"    # Landroid/app/Notification$Builder;

    .line 12726
    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 12727
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/app/Notification$Builder;->-$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    .line 12728
    const-string v1, "android.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/app/Notification$Builder;->-$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    .line 12729
    const-string v1, "android.subText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->summaryText:Ljava/lang/CharSequence;

    .line 12730
    return-object p0
.end method

.method final blacklist hasTitle()Z
    .locals 1

    .line 12611
    iget-object v0, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTitle:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final greylist-max-o headerTextSecondary(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 12700
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary:Ljava/lang/CharSequence;

    .line 12701
    return-object p0
.end method

.method public blacklist headerless(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "headerless"    # Z

    .line 12620
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    .line 12621
    return-object p0
.end method

.method final blacklist hideActions(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "hideActions"    # Z

    .line 12640
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideActions:Z

    .line 12641
    return-object p0
.end method

.method public blacklist hideAppName(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "hideAppName"    # Z

    .line 12625
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideAppName:Z

    .line 12626
    return-object p0
.end method

.method final blacklist hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "hideLeftIcon"    # Z

    .line 12706
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideLeftIcon:Z

    .line 12707
    return-object p0
.end method

.method final blacklist hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "hideProgress"    # Z

    .line 12645
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideProgress:Z

    .line 12646
    return-object p0
.end method

.method final blacklist hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "hideRightIcon"    # Z

    .line 12711
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideRightIcon:Z

    .line 12712
    return-object p0
.end method

.method final blacklist hideSnoozeButton(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "hideSnoozeButton"    # Z

    .line 12665
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSnoozeButton:Z

    .line 12666
    return-object p0
.end method

.method public blacklist hideSubText(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "hideSubText"    # Z

    .line 12630
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSubText:Z

    .line 12631
    return-object p0
.end method

.method public blacklist hideTime(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "hideTime"    # Z

    .line 12635
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTime:Z

    .line 12636
    return-object p0
.end method

.method final blacklist hideTitle(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "hideTitle"    # Z

    .line 12650
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTitle:Z

    .line 12651
    return-object p0
.end method

.method final blacklist highlightExpander(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "highlight"    # Z

    .line 12721
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHighlightExpander:Z

    .line 12722
    return-object p0
.end method

.method final blacklist promotedPicture(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "promotedPicture"    # Landroid/graphics/drawable/Icon;

    .line 12670
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    .line 12671
    return-object p0
.end method

.method final greylist-max-o reset()Landroid/app/Notification$StandardTemplateParams;
    .locals 3

    .line 12584
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_UNSPECIFIED:I

    iput v0, p0, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    .line 12585
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    .line 12586
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideAppName:Z

    .line 12587
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTitle:Z

    .line 12588
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSubText:Z

    .line 12589
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTime:Z

    .line 12590
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideActions:Z

    .line 12591
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideProgress:Z

    .line 12592
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSnoozeButton:Z

    .line 12593
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideLeftIcon:Z

    .line 12594
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideRightIcon:Z

    .line 12595
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    .line 12596
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    .line 12597
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mAllowTextWithProgress:Z

    .line 12598
    const v2, 0x1020016

    iput v2, p0, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    .line 12599
    const v2, 0x102050f

    iput v2, p0, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    .line 12600
    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    .line 12601
    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    .line 12602
    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->summaryText:Ljava/lang/CharSequence;

    .line 12603
    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary:Ljava/lang/CharSequence;

    .line 12604
    const/4 v1, 0x3

    iput v1, p0, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    .line 12605
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Notification$StandardTemplateParams;->allowColorization:Z

    .line 12606
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHighlightExpander:Z

    .line 12607
    return-object p0
.end method

.method public greylist-max-o setMaxRemoteInputHistory(I)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "maxRemoteInputHistory"    # I

    .line 12739
    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    .line 12740
    return-object p0
.end method

.method final blacklist summaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 12695
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->summaryText:Ljava/lang/CharSequence;

    .line 12696
    return-object p0
.end method

.method final greylist-max-o text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 12690
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    .line 12691
    return-object p0
.end method

.method public blacklist textViewId(I)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "textViewId"    # I

    .line 12680
    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    .line 12681
    return-object p0
.end method

.method final greylist-max-o title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 12685
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    .line 12686
    return-object p0
.end method

.method public blacklist titleViewId(I)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "titleViewId"    # I

    .line 12675
    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    .line 12676
    return-object p0
.end method

.method final blacklist viewType(I)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "viewType"    # I

    .line 12615
    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    .line 12616
    return-object p0
.end method
