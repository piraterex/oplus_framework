.class public Lcom/android/internal/widget/ConversationLayout;
.super Landroid/widget/FrameLayout;
.source "ConversationLayout.java"

# interfaces
.implements Lcom/android/internal/widget/ImageMessageConsumer;
.implements Lcom/android/internal/widget/IMessagingLayout;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;
    }
.end annotation


# static fields
.field public static final blacklist FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

.field public static final blacklist FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final blacklist IMPORTANCE_ANIM_GROW_DURATION:I = 0xfa

.field public static final blacklist IMPORTANCE_ANIM_SHRINK_DELAY:I = 0x19

.field public static final blacklist IMPORTANCE_ANIM_SHRINK_DURATION:I = 0xc8

.field public static final blacklist LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final blacklist MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

.field public static final blacklist OVERSHOOT:Landroid/view/animation/Interpolator;


# instance fields
.field private blacklist mActions:Lcom/android/internal/widget/NotificationActionListLayout;

.field private blacklist mAddedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppName:Lcom/android/internal/widget/ObservableTextView;

.field private blacklist mAppNameDivider:Landroid/view/View;

.field private blacklist mAppNameGone:Z

.field private blacklist mAvatarReplacement:Landroid/graphics/drawable/Icon;

.field private blacklist mBadgeProtrusion:I

.field private blacklist mContentContainer:Landroid/view/View;

.field private blacklist mContentMarginEnd:I

.field private blacklist mConversationAvatarSize:I

.field private blacklist mConversationAvatarSizeExpanded:I

.field private blacklist mConversationFacePile:Landroid/view/View;

.field private blacklist mConversationHeader:Landroid/view/View;

.field private blacklist mConversationIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mConversationIconBadge:Landroid/view/View;

.field private blacklist mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mConversationIconContainer:Landroid/view/View;

.field private blacklist mConversationIconTopPadding:I

.field private blacklist mConversationIconTopPaddingExpandedGroup:I

.field private blacklist mConversationIconView:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mConversationText:Landroid/widget/TextView;

.field private blacklist mConversationTitle:Ljava/lang/CharSequence;

.field private blacklist mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

.field private blacklist mExpandButtonAndContentContainer:Landroid/view/ViewGroup;

.field private blacklist mExpandButtonContainer:Landroid/view/View;

.field private blacklist mExpandable:Z

.field private blacklist mExpandedGroupBadgeProtrusion:I

.field private blacklist mExpandedGroupBadgeProtrusionFacePile:I

.field private blacklist mExpandedGroupMessagePadding:I

.field private blacklist mFacePileAvatarSize:I

.field private blacklist mFacePileAvatarSizeExpandedGroup:I

.field private blacklist mFacePileProtectionWidth:I

.field private blacklist mFacePileProtectionWidthExpanded:I

.field private blacklist mFallbackChatName:Ljava/lang/CharSequence;

.field private blacklist mFallbackGroupChatName:Ljava/lang/CharSequence;

.field private blacklist mFeedbackIcon:Landroid/view/View;

.field private blacklist mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHistoricMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIcon:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

.field private blacklist mImageResolver:Lcom/android/internal/widget/ImageResolver;

.field private blacklist mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mImportantConversation:Z

.field private blacklist mIsCollapsed:Z

.field private blacklist mIsOneToOne:Z

.field private blacklist mLargeIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mLayoutColor:I

.field private blacklist mMessageSpacingGroup:I

.field private blacklist mMessageSpacingStandard:I

.field private blacklist mMessageTextColor:I

.field private blacklist mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMessagingClipRect:Landroid/graphics/Rect;

.field private blacklist mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

.field private blacklist mMinTouchSize:F

.field private blacklist mNameReplacement:Ljava/lang/CharSequence;

.field private blacklist mNotificationBackgroundColor:I

.field private blacklist mNotificationHeaderExpandedPadding:I

.field private final blacklist mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

.field private blacklist mSenderTextColor:I

.field private blacklist mShortcutIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mShowHistoricMessages:Z

.field private blacklist mToRecycle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

.field private blacklist mUser:Landroid/app/Person;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAddedGroups(Lcom/android/internal/widget/ConversationLayout;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConversationIconBadgeBg(Lcom/android/internal/widget/ConversationLayout;)Lcom/android/internal/widget/CachingIconView;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    .line 78
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 79
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v1, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 80
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 81
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3fb33333    # 1.4f

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->OVERSHOOT:Landroid/view/animation/Interpolator;

    .line 82
    new-instance v0, Lcom/android/internal/widget/MessagingPropertyAnimator;

    invoke-direct {v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ConversationLayout;->MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 153
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    .line 149
    new-instance v0, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;-><init>(Landroid/view/View;Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 154
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 157
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    .line 149
    new-instance v0, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;-><init>(Landroid/view/View;Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 158
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 162
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    .line 149
    new-instance v0, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;-><init>(Landroid/view/View;Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 163
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 167
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 87
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    .line 149
    new-instance v0, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;-><init>(Landroid/view/View;Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    .line 168
    return-void
.end method

.method private blacklist addRemoteInputHistoryToMessages(Ljava/util/List;[Landroid/app/RemoteInputHistoryItem;)V
    .locals 9
    .param p2, "remoteInputHistory"    # [Landroid/app/RemoteInputHistoryItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;[",
            "Landroid/app/RemoteInputHistoryItem;",
            ")V"
        }
    .end annotation

    .line 422
    .local p1, "newMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    if-eqz p2, :cond_3

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 425
    :cond_0
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 426
    aget-object v1, p2, v0

    .line 427
    .local v1, "historyMessage":Landroid/app/RemoteInputHistoryItem;
    new-instance v8, Landroid/app/Notification$MessagingStyle$Message;

    .line 428
    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v6

    check-cast v2, Landroid/app/Person;

    const/4 v7, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;Z)V

    .line 429
    .local v2, "message":Landroid/app/Notification$MessagingStyle$Message;
    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 430
    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/RemoteInputHistoryItem;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;

    .line 432
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    .end local v1    # "historyMessage":Landroid/app/RemoteInputHistoryItem;
    .end local v2    # "message":Landroid/app/Notification$MessagingStyle$Message;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 434
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 423
    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist applyNotificationBackgroundColor(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 846
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mNotificationBackgroundColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 847
    return-void
.end method

.method private blacklist bind(Ljava/util/List;Ljava/util/List;Z)V
    .locals 8
    .param p3, "showSpinner"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;Z)V"
        }
    .end annotation

    .line 441
    .local p1, "newMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    .local p2, "newHistoricMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/internal/widget/ConversationLayout;->createMessages(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 443
    .local v0, "historicMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/ConversationLayout;->createMessages(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 446
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 449
    .local v2, "oldGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v3, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v4, "senders":Ljava/util/List;, "Ljava/util/List<Landroid/app/Person;>;"
    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/internal/widget/ConversationLayout;->findGroups(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 457
    invoke-direct {p0, v3, v4, p3}, Lcom/android/internal/widget/ConversationLayout;->createGroupViews(Ljava/util/List;Ljava/util/List;Z)V

    .line 460
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->removeGroups(Ljava/util/ArrayList;)V

    .line 463
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/MessagingMessage;

    .line 464
    .local v6, "message":Lcom/android/internal/widget/MessagingMessage;
    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/android/internal/widget/MessagingMessage;->removeMessage(Ljava/util/ArrayList;)V

    .line 465
    .end local v6    # "message":Lcom/android/internal/widget/MessagingMessage;
    goto :goto_0

    .line 466
    :cond_0
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/MessagingMessage;

    .line 467
    .local v6, "historicMessage":Lcom/android/internal/widget/MessagingMessage;
    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/android/internal/widget/MessagingMessage;->removeMessage(Ljava/util/ArrayList;)V

    .line 468
    .end local v6    # "historicMessage":Lcom/android/internal/widget/MessagingMessage;
    goto :goto_1

    .line 470
    :cond_1
    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    .line 471
    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    .line 473
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateHistoricMessageVisibility()V

    .line 474
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateTitleAndNamesDisplay()V

    .line 476
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateConversationLayout()V

    .line 479
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 480
    .local v6, "child":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    invoke-interface {v6}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->recycle()V

    .line 481
    .end local v6    # "child":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    goto :goto_2

    .line 482
    :cond_2
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 483
    return-void
.end method

.method private blacklist bindFacePile()V
    .locals 8

    .line 612
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    const v1, 0x1020278

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 614
    .local v0, "bottomBackground":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    const v2, 0x1020277

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 616
    .local v1, "bottomView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    const v3, 0x1020279

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 619
    .local v2, "topView":Landroid/widget/ImageView;
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ConversationLayout;->bindFacePile(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 624
    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v3, :cond_0

    .line 625
    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSize:I

    .line 626
    .local v3, "conversationAvatarSize":I
    iget v4, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileAvatarSize:I

    .line 627
    .local v4, "facepileAvatarSize":I
    iget v5, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileProtectionWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    .local v5, "facePileBackgroundSize":I
    goto :goto_0

    .line 629
    .end local v3    # "conversationAvatarSize":I
    .end local v4    # "facepileAvatarSize":I
    .end local v5    # "facePileBackgroundSize":I
    :cond_0
    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSizeExpanded:I

    .line 630
    .restart local v3    # "conversationAvatarSize":I
    iget v4, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileAvatarSizeExpandedGroup:I

    .line 631
    .restart local v4    # "facepileAvatarSize":I
    iget v5, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileProtectionWidthExpanded:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    .line 633
    .restart local v5    # "facePileBackgroundSize":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 634
    .local v6, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 635
    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 636
    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 639
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 640
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 641
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 644
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 645
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 646
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 649
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 650
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 651
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 652
    return-void
.end method

.method private blacklist createGroupViews(Ljava/util/List;Ljava/util/List;Z)V
    .locals 8
    .param p3, "showSpinner"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;Z)V"
        }
    .end annotation

    .line 866
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    .local p2, "senders":Ljava/util/List;, "Ljava/util/List<Landroid/app/Person;>;"
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 867
    const/4 v0, 0x0

    .local v0, "groupIndex":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 868
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 869
    .local v1, "group":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    const/4 v2, 0x0

    .line 871
    .local v2, "newGroup":Lcom/android/internal/widget/MessagingGroup;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "messageIndex":I
    :goto_1
    if-ltz v3, :cond_1

    .line 872
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MessagingMessage;

    .line 873
    .local v5, "message":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v5}, Lcom/android/internal/widget/MessagingMessage;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v2

    .line 874
    if-eqz v2, :cond_0

    .line 875
    goto :goto_2

    .line 871
    .end local v5    # "message":Lcom/android/internal/widget/MessagingMessage;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 879
    .end local v3    # "messageIndex":I
    :cond_1
    :goto_2
    if-nez v2, :cond_2

    .line 880
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-static {v3}, Lcom/android/internal/widget/MessagingGroup;->createGroup(Lcom/android/internal/widget/MessagingLinearLayout;)Lcom/android/internal/widget/MessagingGroup;

    move-result-object v2

    .line 881
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 882
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    if-ne v3, v5, :cond_8

    .line 887
    :goto_3
    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 888
    const/4 v3, 0x2

    goto :goto_4

    .line 889
    :cond_3
    move v3, v5

    .line 887
    :goto_4
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/MessagingGroup;->setImageDisplayLocation(I)V

    .line 890
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/MessagingGroup;->setIsInConversation(Z)V

    .line 891
    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/MessagingGroup;->setLayoutColor(I)V

    .line 892
    iget v3, p0, Lcom/android/internal/widget/ConversationLayout;->mSenderTextColor:I

    iget v6, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageTextColor:I

    invoke-virtual {v2, v3, v6}, Lcom/android/internal/widget/MessagingGroup;->setTextColors(II)V

    .line 893
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Person;

    .line 894
    .local v3, "sender":Landroid/app/Person;
    const/4 v6, 0x0

    .line 895
    .local v6, "nameOverride":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    if-eq v3, v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mNameReplacement:Ljava/lang/CharSequence;

    if-eqz v7, :cond_4

    .line 896
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mNameReplacement:Ljava/lang/CharSequence;

    .line 898
    :cond_4
    iget-boolean v7, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-nez v7, :cond_5

    move v7, v4

    goto :goto_5

    :cond_5
    move v7, v5

    :goto_5
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/MessagingGroup;->setShowingAvatar(Z)V

    .line 899
    iget-boolean v7, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/MessagingGroup;->setSingleLine(Z)V

    .line 900
    invoke-virtual {v2, v3, v6}, Lcom/android/internal/widget/MessagingGroup;->setSender(Landroid/app/Person;Ljava/lang/CharSequence;)V

    .line 901
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    if-ne v0, v7, :cond_6

    if-eqz p3, :cond_6

    goto :goto_6

    :cond_6
    move v4, v5

    :goto_6
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/MessagingGroup;->setSending(Z)V

    .line 902
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-eq v4, v0, :cond_7

    .line 906
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 907
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v2, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;I)V

    .line 909
    :cond_7
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/MessagingGroup;->setMessages(Ljava/util/List;)V

    .line 867
    .end local v1    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v2    # "newGroup":Lcom/android/internal/widget/MessagingGroup;
    .end local v3    # "sender":Landroid/app/Person;
    .end local v6    # "nameOverride":Ljava/lang/CharSequence;
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 883
    .restart local v1    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .restart local v2    # "newGroup":Lcom/android/internal/widget/MessagingGroup;
    :cond_8
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "group parent was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 884
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 911
    .end local v0    # "groupIndex":I
    .end local v1    # "group":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v2    # "newGroup":Lcom/android/internal/widget/MessagingGroup;
    :cond_9
    return-void
.end method

.method private blacklist createMessages(Ljava/util/List;Z)Ljava/util/List;
    .locals 5
    .param p2, "historic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation

    .line 957
    .local p1, "newMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 958
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 959
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$MessagingStyle$Message;

    .line 960
    .local v2, "m":Landroid/app/Notification$MessagingStyle$Message;
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findAndRemoveMatchingMessage(Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v3

    .line 961
    .local v3, "message":Lcom/android/internal/widget/MessagingMessage;
    if-nez v3, :cond_0

    .line 962
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    invoke-static {p0, v2, v4}, Lcom/android/internal/widget/MessagingMessage;->createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;Lcom/android/internal/widget/ImageResolver;)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v3

    .line 964
    :cond_0
    invoke-interface {v3, p2}, Lcom/android/internal/widget/MessagingMessage;->setIsHistoric(Z)V

    .line 965
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    .end local v2    # "m":Landroid/app/Notification$MessagingStyle$Message;
    .end local v3    # "message":Lcom/android/internal/widget/MessagingMessage;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 967
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private blacklist findAndRemoveMatchingMessage(Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;
    .locals 3
    .param p1, "m"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 971
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 972
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    .line 973
    .local v1, "existing":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v1, p1}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 974
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 975
    return-object v1

    .line 971
    .end local v1    # "existing":Lcom/android/internal/widget/MessagingMessage;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 978
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 979
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    .line 980
    .restart local v1    # "existing":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v1, p1}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 981
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 982
    return-object v1

    .line 978
    .end local v1    # "existing":Lcom/android/internal/widget/MessagingMessage;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 985
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist findGroups(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;)V"
        }
    .end annotation

    .line 916
    .local p1, "historicMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .local p3, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;>;"
    .local p4, "senders":Ljava/util/List;, "Ljava/util/List<Landroid/app/Person;>;"
    const/4 v0, 0x0

    .line 917
    .local v0, "currentSenderKey":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 918
    .local v1, "currentGroup":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 919
    .local v2, "histSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v2

    if-ge v3, v4, :cond_4

    .line 921
    if-ge v3, v2, :cond_0

    .line 922
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingMessage;

    .local v4, "message":Lcom/android/internal/widget/MessagingMessage;
    goto :goto_1

    .line 924
    .end local v4    # "message":Lcom/android/internal/widget/MessagingMessage;
    :cond_0
    sub-int v4, v3, v2

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingMessage;

    .line 926
    .restart local v4    # "message":Lcom/android/internal/widget/MessagingMessage;
    :goto_1
    const/4 v5, 0x1

    if-nez v1, :cond_1

    move v6, v5

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 927
    .local v6, "isNewGroup":Z
    :goto_2
    invoke-interface {v4}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v7

    .line 928
    .local v7, "sender":Landroid/app/Person;
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 929
    .local v8, "key":Ljava/lang/CharSequence;
    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/2addr v5, v9

    or-int/2addr v5, v6

    .line 930
    .end local v6    # "isNewGroup":Z
    .local v5, "isNewGroup":Z
    if-eqz v5, :cond_3

    .line 931
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 932
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    if-nez v7, :cond_2

    .line 934
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    move-object v7, v6

    .end local v7    # "sender":Landroid/app/Person;
    .local v6, "sender":Landroid/app/Person;
    goto :goto_3

    .line 937
    .end local v6    # "sender":Landroid/app/Person;
    .restart local v7    # "sender":Landroid/app/Person;
    :cond_2
    invoke-virtual {v7}, Landroid/app/Person;->toBuilder()Landroid/app/Person$Builder;

    move-result-object v6

    invoke-virtual {v7}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v6

    move-object v7, v6

    .line 939
    :goto_3
    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    move-object v0, v8

    .line 942
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    .end local v4    # "message":Lcom/android/internal/widget/MessagingMessage;
    .end local v5    # "isNewGroup":Z
    .end local v7    # "sender":Landroid/app/Person;
    .end local v8    # "key":Ljava/lang/CharSequence;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 944
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method private blacklist getKey(Landroid/app/Person;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "person"    # Landroid/app/Person;

    .line 947
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private blacklist getRelativeTouchRect(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 3
    .param p1, "touchRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;

    .line 1061
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1062
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    :goto_0
    if-eq v0, p0, :cond_0

    .line 1063
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1064
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 1066
    :cond_0
    return-void
.end method

.method private blacklist onAppNameVisibilityChanged()V
    .locals 2

    .line 1141
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ObservableTextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1142
    .local v0, "appNameGone":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameGone:Z

    if-eq v0, v1, :cond_1

    .line 1143
    iput-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameGone:Z

    .line 1144
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateAppNameDividerVisibility()V

    .line 1146
    :cond_1
    return-void
.end method

.method private blacklist removeGroups(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;)V"
        }
    .end annotation

    .line 751
    .local p1, "oldGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingGroup;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 752
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 753
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingGroup;

    .line 754
    .local v2, "group":Lcom/android/internal/widget/MessagingGroup;
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 755
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v3

    .line 756
    .local v3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingGroup;->isShown()Z

    move-result v4

    .line 757
    .local v4, "wasShown":Z
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 758
    if-eqz v4, :cond_0

    invoke-static {v2}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 759
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lcom/android/internal/widget/MessagingLinearLayout;->addTransientView(Landroid/view/View;I)V

    .line 760
    new-instance v5, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v2}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/widget/ConversationLayout;Lcom/android/internal/widget/MessagingGroup;)V

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/MessagingGroup;->removeGroupAnimated(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 767
    :cond_0
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mToRecycle:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    :goto_1
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 770
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 752
    .end local v2    # "group":Lcom/android/internal/widget/MessagingGroup;
    .end local v3    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v4    # "wasShown":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private blacklist setUser(Landroid/app/Person;)V
    .locals 2
    .param p1, "user"    # Landroid/app/Person;

    .line 855
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    .line 856
    invoke-virtual {p1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    .line 857
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080633

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 859
    .local v0, "userIcon":Landroid/graphics/drawable/Icon;
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 860
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    invoke-virtual {v1}, Landroid/app/Person;->toBuilder()Landroid/app/Person$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    .line 862
    .end local v0    # "userIcon":Landroid/graphics/drawable/Icon;
    :cond_0
    return-void
.end method

.method private blacklist updateActionListPadding()V
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    if-eqz v0, :cond_0

    .line 549
    const v1, 0x105004f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->setCollapsibleIndentDimen(I)V

    .line 551
    :cond_0
    return-void
.end method

.method private blacklist updateAppName()V
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ObservableTextView;->setVisibility(I)V

    .line 656
    return-void
.end method

.method private blacklist updateAppNameDividerVisibility()V
    .locals 2

    .line 1149
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameDivider:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameGone:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1150
    return-void
.end method

.method private blacklist updateContentEndPaddings()V
    .locals 6

    .line 1117
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    if-nez v0, :cond_0

    .line 1118
    const/4 v0, 0x0

    .line 1119
    .local v0, "headerPaddingEnd":I
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mContentMarginEnd:I

    .local v1, "contentPaddingEnd":I
    goto :goto_0

    .line 1120
    .end local v0    # "headerPaddingEnd":I
    .end local v1    # "contentPaddingEnd":I
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_1

    .line 1121
    const/4 v0, 0x0

    .line 1122
    .restart local v0    # "headerPaddingEnd":I
    const/4 v1, 0x0

    .restart local v1    # "contentPaddingEnd":I
    goto :goto_0

    .line 1124
    .end local v0    # "headerPaddingEnd":I
    .end local v1    # "contentPaddingEnd":I
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mNotificationHeaderExpandedPadding:I

    .line 1125
    .restart local v0    # "headerPaddingEnd":I
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mContentMarginEnd:I

    .line 1127
    .restart local v1    # "contentPaddingEnd":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    .line 1128
    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    .line 1129
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    .line 1131
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 1127
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1133
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    .line 1134
    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    .line 1135
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    .line 1137
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 1133
    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1138
    return-void
.end method

.method private blacklist updateConversationLayout()V
    .locals 9

    .line 490
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationTitle:Ljava/lang/CharSequence;

    .line 491
    .local v0, "conversationText":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    .line 492
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v1, :cond_5

    .line 494
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 495
    .local v1, "userKey":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 496
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 497
    .local v3, "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v4

    .line 498
    .local v4, "messageSender":Landroid/app/Person;
    if-eqz v4, :cond_0

    invoke-direct {p0, v4}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-nez v2, :cond_4

    .line 500
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 503
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 505
    :cond_2
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    if-nez v5, :cond_5

    .line 506
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatarIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 507
    .local v5, "avatarIcon":Landroid/graphics/drawable/Icon;
    if-nez v5, :cond_3

    .line 508
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget v7, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    const-string v8, ""

    invoke-virtual {v6, v0, v8, v7}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 511
    :cond_3
    iput-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    .line 512
    .end local v5    # "avatarIcon":Landroid/graphics/drawable/Icon;
    goto :goto_1

    .line 495
    .end local v3    # "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    .end local v4    # "messageSender":Landroid/app/Person;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 517
    .end local v1    # "userKey":Ljava/lang/CharSequence;
    .end local v2    # "i":I
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_6

    .line 518
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    .line 520
    :cond_6
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_7

    goto :goto_2

    .line 525
    :cond_7
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    .line 527
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 529
    const v1, 0x1020276

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    .line 530
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->bindFacePile()V

    goto :goto_3

    .line 521
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    .line 522
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 523
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/CachingIconView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 532
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 533
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackChatName:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackGroupChatName:Ljava/lang/CharSequence;

    :goto_4
    move-object v0, v1

    .line 535
    :cond_a
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/widget/PeopleHelper;->maybeHideFirstSenderName(Ljava/util/List;ZLjava/lang/CharSequence;)V

    .line 539
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateAppName()V

    .line 540
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateIconPositionAndSize()V

    .line 541
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateImageMessages()V

    .line 542
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updatePaddingsBasedOnContentAvailability()V

    .line 543
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateActionListPadding()V

    .line 544
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateAppNameDividerVisibility()V

    .line 545
    return-void
.end method

.method private blacklist updateExpandButton()V
    .locals 4

    .line 1083
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_0

    .line 1084
    const/16 v1, 0x11

    .line 1091
    .local v1, "buttonGravity":I
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonAndContentContainer:Landroid/view/ViewGroup;

    .local v2, "newContainer":Landroid/view/ViewGroup;
    goto :goto_0

    .line 1093
    .end local v1    # "buttonGravity":I
    .end local v2    # "newContainer":Landroid/view/ViewGroup;
    :cond_0
    const/16 v1, 0x31

    .line 1094
    .restart local v1    # "buttonGravity":I
    move-object v2, p0

    .line 1096
    .restart local v2    # "newContainer":Landroid/view/ViewGroup;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/NotificationExpandButton;->setExpanded(Z)V

    .line 1100
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v2, v0, :cond_1

    .line 1101
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1102
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1106
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    .line 1107
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationExpandButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1108
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1109
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/NotificationExpandButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1110
    return-void
.end method

.method private blacklist updateHistoricMessageVisibility()V
    .locals 12

    .line 994
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 995
    .local v0, "numHistoric":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ge v1, v0, :cond_1

    .line 996
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingMessage;

    .line 997
    .local v4, "existing":Lcom/android/internal/widget/MessagingMessage;
    iget-boolean v5, p0, Lcom/android/internal/widget/ConversationLayout;->mShowHistoricMessages:Z

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    invoke-interface {v4, v2}, Lcom/android/internal/widget/MessagingMessage;->setVisibility(I)V

    .line 995
    .end local v4    # "existing":Lcom/android/internal/widget/MessagingMessage;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 999
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1000
    .local v1, "numGroups":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v1, :cond_6

    .line 1001
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/MessagingGroup;

    .line 1002
    .local v5, "group":Lcom/android/internal/widget/MessagingGroup;
    const/4 v6, 0x0

    .line 1003
    .local v6, "visibleChildren":I
    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v7

    .line 1004
    .local v7, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 1005
    .local v8, "numGroupMessages":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    if-ge v9, v8, :cond_3

    .line 1006
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/MessagingMessage;

    .line 1007
    .local v10, "message":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v10}, Lcom/android/internal/widget/MessagingMessage;->getVisibility()I

    move-result v11

    if-eq v11, v3, :cond_2

    .line 1008
    add-int/lit8 v6, v6, 0x1

    .line 1005
    .end local v10    # "message":Lcom/android/internal/widget/MessagingMessage;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1011
    .end local v9    # "j":I
    :cond_3
    if-lez v6, :cond_4

    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getVisibility()I

    move-result v9

    if-ne v9, v3, :cond_4

    .line 1012
    invoke-virtual {v5, v2}, Lcom/android/internal/widget/MessagingGroup;->setVisibility(I)V

    goto :goto_4

    .line 1013
    :cond_4
    if-nez v6, :cond_5

    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingGroup;->getVisibility()I

    move-result v9

    if-eq v9, v3, :cond_5

    .line 1014
    invoke-virtual {v5, v3}, Lcom/android/internal/widget/MessagingGroup;->setVisibility(I)V

    .line 1000
    .end local v5    # "group":Lcom/android/internal/widget/MessagingGroup;
    .end local v6    # "visibleChildren":I
    .end local v7    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/MessagingMessage;>;"
    .end local v8    # "numGroupMessages":I
    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1017
    .end local v4    # "i":I
    :cond_6
    return-void
.end method

.method private blacklist updateIconPositionAndSize()V
    .locals 4

    .line 668
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 673
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupBadgeProtrusionFacePile:I

    goto :goto_0

    .line 674
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupBadgeProtrusion:I

    :goto_0
    nop

    .line 675
    .local v0, "badgeProtrusion":I
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSizeExpanded:I

    .local v1, "conversationAvatarSize":I
    goto :goto_2

    .line 669
    .end local v0    # "badgeProtrusion":I
    .end local v1    # "conversationAvatarSize":I
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mBadgeProtrusion:I

    .line 670
    .restart local v0    # "badgeProtrusion":I
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSize:I

    .line 678
    .restart local v1    # "conversationAvatarSize":I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v2}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 679
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v2}, Lcom/android/internal/widget/CachingIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 680
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 681
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 682
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 683
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 684
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 685
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/CachingIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 688
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 689
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 690
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 691
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 692
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 693
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    return-void
.end method

.method private blacklist updateImageMessages()V
    .locals 4

    .line 554
    const/4 v0, 0x0

    .line 555
    .local v0, "newMessage":Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingGroup;

    .line 560
    .local v1, "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v2

    .line 561
    .local v2, "isolatedMessage":Lcom/android/internal/widget/MessagingImageMessage;
    if-eqz v2, :cond_0

    .line 562
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingImageMessage;->getView()Landroid/view/View;

    move-result-object v0

    .line 566
    .end local v1    # "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    .end local v2    # "isolatedMessage":Lcom/android/internal/widget/MessagingImageMessage;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 567
    .local v1, "previousMessage":Landroid/view/View;
    if-eq v1, v0, :cond_1

    .line 568
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    .line 569
    if-eqz v0, :cond_1

    .line 570
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;)V

    .line 573
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->setVisibility(I)V

    .line 574
    return-void
.end method

.method private blacklist updatePaddingsBasedOnContentAvailability()V
    .locals 6

    .line 699
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 700
    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageSpacingStandard:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageSpacingGroup:I

    .line 699
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->setSpacing(I)V

    .line 702
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v1, :cond_1

    goto :goto_1

    .line 706
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupMessagePadding:I

    goto :goto_2

    .line 703
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 706
    :goto_2
    nop

    .line 708
    .local v1, "messagingPadding":I
    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_3

    goto :goto_3

    .line 710
    :cond_3
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconTopPaddingExpandedGroup:I

    goto :goto_4

    .line 709
    :cond_4
    :goto_3
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconTopPadding:I

    .line 710
    :goto_4
    nop

    .line 712
    .local v0, "iconPadding":I
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    .line 713
    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    .line 715
    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    .line 716
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 712
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 718
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 719
    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 721
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingLinearLayout;->getPaddingEnd()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 722
    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getPaddingBottom()I

    move-result v5

    .line 718
    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/internal/widget/MessagingLinearLayout;->setPaddingRelative(IIII)V

    .line 723
    return-void
.end method

.method private blacklist updateTitleAndNamesDisplay()V
    .locals 9

    .line 777
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->mapUniqueNamesToPrefix(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 780
    .local v0, "uniqueNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/String;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 781
    .local v1, "cachedAvatars":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 783
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 784
    .local v3, "group":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 785
    .local v4, "isOwnMessage":Z
    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v5

    .line 786
    .local v5, "senderName":Ljava/lang/CharSequence;
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->needsGeneratedAvatar()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    if-eqz v6, :cond_1

    if-nez v4, :cond_1

    .line 788
    goto :goto_2

    .line 790
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 791
    .local v6, "symbol":Ljava/lang/String;
    iget v7, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/internal/widget/MessagingGroup;->getAvatarSymbolIfMatching(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 793
    .local v7, "cachedIcon":Landroid/graphics/drawable/Icon;
    if-eqz v7, :cond_2

    .line 794
    invoke-virtual {v1, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    .end local v3    # "group":Lcom/android/internal/widget/MessagingGroup;
    .end local v4    # "isOwnMessage":Z
    .end local v5    # "senderName":Ljava/lang/CharSequence;
    .end local v6    # "symbol":Ljava/lang/String;
    .end local v7    # "cachedIcon":Landroid/graphics/drawable/Icon;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 798
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 800
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    .line 801
    .restart local v3    # "group":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 802
    .local v4, "senderName":Ljava/lang/CharSequence;
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->needsGeneratedAvatar()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 803
    goto :goto_4

    .line 805
    :cond_4
    iget-boolean v5, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    if-eq v5, v6, :cond_5

    .line 806
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/MessagingGroup;->setAvatar(Landroid/graphics/drawable/Icon;)V

    goto :goto_4

    .line 808
    :cond_5
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Icon;

    .line 809
    .local v5, "cachedIcon":Landroid/graphics/drawable/Icon;
    if-nez v5, :cond_6

    .line 810
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 811
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget v8, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    .line 810
    invoke-virtual {v6, v4, v7, v8}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 812
    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    :cond_6
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v3, v5, v4, v6, v7}, Lcom/android/internal/widget/MessagingGroup;->setCreatedAvatar(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 798
    .end local v3    # "group":Lcom/android/internal/widget/MessagingGroup;
    .end local v4    # "senderName":Ljava/lang/CharSequence;
    .end local v5    # "cachedIcon":Landroid/graphics/drawable/Icon;
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 818
    .end local v2    # "i":I
    :cond_8
    return-void
.end method


# virtual methods
.method public blacklist bindFacePile(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 11
    .param p1, "bottomBackground"    # Landroid/widget/ImageView;
    .param p2, "bottomView"    # Landroid/widget/ImageView;
    .param p3, "topView"    # Landroid/widget/ImageView;

    .line 577
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->applyNotificationBackgroundColor(Landroid/widget/ImageView;)V

    .line 579
    const/4 v0, 0x0

    .line 580
    .local v0, "secondLastIcon":Landroid/graphics/drawable/Icon;
    const/4 v1, 0x0

    .line 581
    .local v1, "lastKey":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 582
    .local v2, "lastIcon":Landroid/graphics/drawable/Icon;
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mUser:Landroid/app/Person;

    invoke-direct {p0, v3}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 583
    .local v3, "userKey":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_6

    .line 584
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/MessagingGroup;

    .line 585
    .local v6, "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    invoke-virtual {v6}, Lcom/android/internal/widget/MessagingGroup;->getSender()Landroid/app/Person;

    move-result-object v7

    .line 586
    .local v7, "messageSender":Landroid/app/Person;
    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 587
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    move v9, v5

    goto :goto_1

    :cond_0
    move v9, v8

    .line 588
    .local v9, "notUser":Z
    :goto_1
    if-eqz v7, :cond_1

    .line 589
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    move v8, v5

    goto :goto_2

    :cond_1
    nop

    .line 590
    .local v8, "notIncluded":Z
    :goto_2
    if-eqz v9, :cond_2

    if-nez v8, :cond_3

    :cond_2
    if-nez v4, :cond_5

    if-nez v1, :cond_5

    .line 592
    :cond_3
    if-nez v2, :cond_4

    .line 593
    invoke-virtual {v6}, Lcom/android/internal/widget/MessagingGroup;->getAvatarIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 594
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ConversationLayout;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_3

    .line 596
    :cond_4
    invoke-virtual {v6}, Lcom/android/internal/widget/MessagingGroup;->getAvatarIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 597
    goto :goto_4

    .line 583
    .end local v6    # "messagingGroup":Lcom/android/internal/widget/MessagingGroup;
    .end local v7    # "messageSender":Landroid/app/Person;
    .end local v8    # "notIncluded":Z
    .end local v9    # "notUser":Z
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 601
    .end local v4    # "i":I
    :cond_6
    :goto_4
    const-string v4, ""

    if-nez v2, :cond_7

    .line 602
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget v6, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    const-string v7, " "

    invoke-virtual {v5, v7, v4, v6}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 604
    :cond_7
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 605
    if-nez v0, :cond_8

    .line 606
    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget v6, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    invoke-virtual {v5, v4, v4, v6}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 608
    :cond_8
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 609
    return-void
.end method

.method public blacklist getConversationIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 1207
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public blacklist getConversationSenderName()Ljava/lang/CharSequence;
    .locals 5

    .line 1173
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    const/4 v0, 0x0

    return-object v0

    .line 1176
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1177
    .local v0, "name":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10402e8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getConversationText()Ljava/lang/CharSequence;
    .locals 8

    .line 1186
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    const/4 v0, 0x0

    return-object v0

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingMessage;

    .line 1190
    .local v0, "messagingMessage":Lcom/android/internal/widget/MessagingMessage;
    invoke-interface {v0}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1191
    .local v1, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_1

    instance-of v2, v0, Lcom/android/internal/widget/MessagingImageMessage;

    if-eqz v2, :cond_1

    .line 1192
    nop

    .line 1193
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10402e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1194
    .local v2, "unformatted":Ljava/lang/String;
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1195
    .local v3, "spannableString":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v5, 0x0

    .line 1198
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v7, 0x11

    .line 1195
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1200
    return-object v3

    .line 1202
    .end local v2    # "unformatted":Ljava/lang/String;
    .end local v3    # "spannableString":Landroid/text/SpannableString;
    :cond_1
    return-object v1
.end method

.method public blacklist getConversationTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getImageMessageContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 1073
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    return-object v0
.end method

.method public blacklist getMessagingGroups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation

    .line 1077
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    return-object v0
.end method

.method public blacklist isImportantConversation()Z
    .locals 1

    .line 367
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImportantConversation:Z

    return v0
.end method

.method public blacklist isOneToOne()Z
    .locals 1

    .line 1181
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    return v0
.end method

.method synthetic blacklist lambda$onFinishInflate$0$com-android-internal-widget-ConversationLayout(Ljava/lang/Integer;)V
    .locals 9
    .param p1, "visibility"    # Ljava/lang/Integer;

    .line 194
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 195
    .local v0, "isGone":Z
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v4}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v4

    .line 196
    .local v4, "oldVisibility":I
    if-ne v4, v3, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v2

    .line 197
    .local v5, "wasGone":Z
    :goto_1
    if-eq v5, v0, :cond_2

    .line 200
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v6}, Lcom/android/internal/widget/CachingIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 201
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    .line 205
    :cond_2
    iget-object v6, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v6}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v4

    .line 206
    if-ne v4, v3, :cond_3

    move v6, v1

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    move v5, v6

    .line 207
    iget-boolean v6, p0, Lcom/android/internal/widget/ConversationLayout;->mImportantConversation:Z

    if-nez v6, :cond_4

    move v6, v3

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_5

    move v6, v1

    goto :goto_4

    :cond_5
    move v6, v2

    .line 209
    .local v6, "isRingGone":Z
    :goto_4
    if-eq v5, v6, :cond_6

    .line 212
    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v7}, Lcom/android/internal/widget/CachingIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 213
    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    .line 216
    :cond_6
    iget-object v7, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    .line 217
    if-ne v4, v3, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    .line 218
    .end local v5    # "wasGone":Z
    .local v1, "wasGone":Z
    :goto_5
    if-eq v1, v0, :cond_8

    .line 219
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 220
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 222
    :cond_8
    return-void
.end method

.method synthetic blacklist lambda$onFinishInflate$1$com-android-internal-widget-ConversationLayout(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "forceHidden"    # Ljava/lang/Boolean;

    .line 225
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 226
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 227
    return-void
.end method

.method synthetic blacklist lambda$onFinishInflate$2$com-android-internal-widget-ConversationLayout(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "forceHidden"    # Ljava/lang/Boolean;

    .line 231
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 232
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 234
    return-void
.end method

.method synthetic blacklist lambda$onFinishInflate$3$com-android-internal-widget-ConversationLayout(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "visibility"    # Ljava/lang/Integer;

    .line 282
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->onAppNameVisibilityChanged()V

    .line 283
    return-void
.end method

.method synthetic blacklist lambda$removeGroups$5$com-android-internal-widget-ConversationLayout(Lcom/android/internal/widget/MessagingGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/android/internal/widget/MessagingGroup;

    .line 761
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->removeTransientView(Landroid/view/View;)V

    .line 762
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->recycle()V

    .line 763
    return-void
.end method

.method synthetic blacklist lambda$setIsImportantConversation$4$com-android-internal-widget-ConversationLayout(Landroid/graphics/drawable/GradientDrawable;IILandroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "ring"    # Landroid/graphics/drawable/GradientDrawable;
    .param p2, "ringColor"    # I
    .param p3, "baseSize"    # I
    .param p4, "animation"    # Landroid/animation/ValueAnimator;

    .line 326
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 327
    .local v0, "strokeWidth":I
    invoke-virtual {p1, v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 328
    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    .line 329
    .local v1, "newSize":I
    invoke-virtual {p1, v1, v1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 330
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v2}, Lcom/android/internal/widget/CachingIconView;->invalidate()V

    .line 331
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .locals 5

    .line 172
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 173
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->init(Landroid/content/Context;)V

    .line 174
    const v0, 0x10203f2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 175
    const v0, 0x10201c7

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/NotificationActionListLayout;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    .line 176
    const v0, 0x1020280

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mImageMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 180
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 181
    .local v1, "size":I
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingClipRect:Landroid/graphics/Rect;

    .line 182
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ConversationLayout;->setMessagingClippingDisabled(Z)V

    .line 183
    const v2, 0x102027b

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/CachingIconView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    .line 184
    const v2, 0x102027f

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    .line 185
    const v2, 0x1020006

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/CachingIconView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    .line 186
    const v2, 0x10202c5

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42400000    # 48.0f

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMinTouchSize:F

    .line 188
    const v2, 0x102027e

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/CachingIconView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    .line 189
    const v2, 0x102027c

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadge:Landroid/view/View;

    .line 190
    const v2, 0x102027d

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/CachingIconView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    .line 191
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    new-instance v4, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/CachingIconView;->setOnVisibilityChangedListener(Ljava/util/function/Consumer;)V

    .line 224
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    new-instance v4, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/CachingIconView;->setOnForceHiddenChangedListener(Ljava/util/function/Consumer;)V

    .line 230
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    new-instance v4, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/CachingIconView;->setOnForceHiddenChangedListener(Ljava/util/function/Consumer;)V

    .line 235
    const v2, 0x1020281

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationText:Landroid/widget/TextView;

    .line 236
    const v2, 0x10202ba

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    .line 237
    const v2, 0x102027a

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationHeader:Landroid/view/View;

    .line 238
    const v2, 0x10203e5

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mContentContainer:Landroid/view/View;

    .line 239
    const v2, 0x10202b9

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonAndContentContainer:Landroid/view/ViewGroup;

    .line 240
    const v2, 0x10202b8

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/NotificationExpandButton;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105020e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageSpacingStandard:I

    .line 243
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105020f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageSpacingGroup:I

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10500f3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mNotificationHeaderExpandedPadding:I

    .line 247
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10501e9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mContentMarginEnd:I

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10500ea

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mBadgeProtrusion:I

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10500e8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSize:I

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10500e9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationAvatarSizeExpanded:I

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10500f6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconTopPaddingExpandedGroup:I

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10500f5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconTopPadding:I

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105013b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupMessagePadding:I

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10500eb

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupBadgeProtrusion:I

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10500ec

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandedGroupBadgeProtrusionFacePile:I

    .line 265
    const v2, 0x1020276

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationFacePile:Landroid/view/View;

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10500ef

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileAvatarSize:I

    .line 268
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10500f0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileAvatarSizeExpandedGroup:I

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10500f1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileProtectionWidth:I

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10500f2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFacePileProtectionWidthExpanded:I

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10402ea

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackChatName:Ljava/lang/CharSequence;

    .line 276
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10402e9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFallbackGroupChatName:Ljava/lang/CharSequence;

    .line 278
    const v2, 0x10201f0

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ObservableTextView;

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    .line 279
    const v2, 0x10201ef

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameDivider:Landroid/view/View;

    .line 280
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ObservableTextView;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/widget/ConversationLayout;->mAppNameGone:Z

    .line 281
    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mAppName:Lcom/android/internal/widget/ObservableTextView;

    new-instance v3, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ObservableTextView;->setOnVisibilityChangedListener(Ljava/util/function/Consumer;)V

    .line 284
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1021
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1022
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mAddedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1023
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/ConversationLayout$2;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ConversationLayout$2;-><init>(Lcom/android/internal/widget/ConversationLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    invoke-virtual {v0}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;->clear()V

    .line 1042
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1043
    iget v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMinTouchSize:F

    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1044
    .local v0, "width":F
    iget v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMinTouchSize:F

    iget-object v2, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1045
    .local v1, "height":F
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1046
    .local v2, "feedbackTouchRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float v5, v0, v4

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 1048
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    div-float/2addr v3, v4

    div-float v4, v1, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1050
    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1051
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 1053
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/ConversationLayout;->getRelativeTouchRect(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 1054
    iget-object v3, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    new-instance v4, Landroid/view/TouchDelegate;

    iget-object v5, p0, Lcom/android/internal/widget/ConversationLayout;->mFeedbackIcon:Landroid/view/View;

    invoke-direct {v4, v2, v5}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;->add(Landroid/view/TouchDelegate;)V

    .line 1057
    .end local v0    # "width":F
    .end local v1    # "height":F
    .end local v2    # "feedbackTouchRect":Landroid/graphics/Rect;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mTouchDelegate:Lcom/android/internal/widget/ConversationLayout$TouchDelegateComposite;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 1058
    return-void
.end method

.method public blacklist setAvatarReplacement(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 288
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mAvatarReplacement:Landroid/graphics/drawable/Icon;

    .line 289
    return-void
.end method

.method public blacklist setConversationTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "conversationTitle"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 743
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationTitle:Ljava/lang/CharSequence;

    .line 744
    return-void
.end method

.method public blacklist setData(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 385
    const-string v0, "android.messages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 386
    .local v0, "messages":[Landroid/os/Parcelable;
    nop

    .line 387
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v1

    .line 388
    .local v1, "newMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    const-string v2, "android.messages.historic"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 389
    .local v2, "histMessages":[Landroid/os/Parcelable;
    nop

    .line 390
    invoke-static {v2}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v3

    .line 393
    .local v3, "newHistoricMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    const-string v4, "android.messagingUser"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/Person;

    invoke-direct {p0, v4}, Lcom/android/internal/widget/ConversationLayout;->setUser(Landroid/app/Person;)V

    .line 396
    nop

    .line 397
    const-string v4, "android.remoteInputHistoryItems"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, [Landroid/app/RemoteInputHistoryItem;

    .line 398
    .local v4, "history":[Landroid/app/RemoteInputHistoryItem;
    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/ConversationLayout;->addRemoteInputHistoryToMessages(Ljava/util/List;[Landroid/app/RemoteInputHistoryItem;)V

    .line 400
    nop

    .line 401
    const-string v5, "android.remoteInputSpinner"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 403
    .local v5, "showSpinner":Z
    invoke-direct {p0, v1, v3, v5}, Lcom/android/internal/widget/ConversationLayout;->bind(Ljava/util/List;Ljava/util/List;Z)V

    .line 405
    const-string v6, "android.conversationUnreadMessageCount"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 406
    .local v6, "unreadCount":I
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ConversationLayout;->setUnreadCount(I)V

    .line 407
    return-void
.end method

.method public blacklist setImageResolver(Lcom/android/internal/widget/ImageResolver;)V
    .locals 0
    .param p1, "resolver"    # Lcom/android/internal/widget/ImageResolver;

    .line 411
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    .line 412
    return-void
.end method

.method public blacklist setIsCollapsed(Z)V
    .locals 2
    .param p1, "isCollapsed"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 377
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    .line 378
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->setMaxDisplayedLines(I)V

    .line 379
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateExpandButton()V

    .line 380
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateContentEndPaddings()V

    .line 381
    return-void
.end method

.method public blacklist setIsImportantConversation(Z)V
    .locals 1
    .param p1, "isImportantConversation"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ConversationLayout;->setIsImportantConversation(ZZ)V

    .line 300
    return-void
.end method

.method public blacklist setIsImportantConversation(ZZ)V
    .locals 17
    .param p1, "isImportantConversation"    # Z
    .param p2, "animate"    # Z

    .line 304
    move-object/from16 v0, p0

    move/from16 v1, p1

    iput-boolean v1, v0, Lcom/android/internal/widget/ConversationLayout;->mImportantConversation:Z

    .line 305
    iget-object v2, v0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    iget-object v5, v0, Lcom/android/internal/widget/ConversationLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v5}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v5

    if-eq v5, v3, :cond_0

    .line 306
    move v3, v4

    goto :goto_0

    :cond_0
    nop

    .line 305
    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    .line 308
    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    .line 309
    iget-object v2, v0, Lcom/android/internal/widget/ConversationLayout;->mImportanceRingView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v2}, Lcom/android/internal/widget/CachingIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 310
    .local v2, "ring":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 311
    iget-object v3, v0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v3}, Lcom/android/internal/widget/CachingIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 312
    .local v3, "bg":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060183

    .line 314
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 315
    .local v5, "ringColor":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050166

    .line 316
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 317
    .local v6, "standardThickness":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050164

    .line 318
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 319
    .local v7, "largeThickness":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050165

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 321
    .local v8, "standardSize":I
    mul-int/lit8 v9, v6, 0x2

    sub-int v9, v8, v9

    .line 322
    .local v9, "baseSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ConversationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10500f7

    .line 323
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 325
    .local v10, "bgSize":I
    new-instance v11, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda5;

    invoke-direct {v11, v0, v2, v5, v9}, Lcom/android/internal/widget/ConversationLayout$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/GradientDrawable;II)V

    .line 333
    .local v11, "animatorUpdateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/4 v12, 0x2

    new-array v13, v12, [F

    const/4 v14, 0x0

    aput v14, v13, v4

    int-to-float v14, v7

    const/4 v15, 0x1

    aput v14, v13, v15

    invoke-static {v13}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 334
    .local v13, "growAnimation":Landroid/animation/ValueAnimator;
    sget-object v14, Lcom/android/internal/widget/ConversationLayout;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 335
    move/from16 v16, v5

    .end local v5    # "ringColor":I
    .local v16, "ringColor":I
    const-wide/16 v4, 0xfa

    invoke-virtual {v13, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 336
    invoke-virtual {v13, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 338
    new-array v4, v12, [F

    int-to-float v5, v7

    const/4 v14, 0x0

    aput v5, v4, v14

    int-to-float v5, v6

    aput v5, v4, v15

    .line 339
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 340
    .local v4, "shrinkAnimation":Landroid/animation/ValueAnimator;
    const-wide/16 v14, 0xc8

    invoke-virtual {v4, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 341
    const-wide/16 v14, 0x19

    invoke-virtual {v4, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 342
    sget-object v14, Lcom/android/internal/widget/ConversationLayout;->OVERSHOOT:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 343
    invoke-virtual {v4, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 344
    new-instance v14, Lcom/android/internal/widget/ConversationLayout$1;

    invoke-direct {v14, v0, v3, v9, v10}, Lcom/android/internal/widget/ConversationLayout$1;-><init>(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/GradientDrawable;II)V

    invoke-virtual {v4, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 360
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    .line 361
    .local v14, "anims":Landroid/animation/AnimatorSet;
    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v15, 0x0

    aput-object v13, v12, v15

    const/4 v5, 0x1

    aput-object v4, v12, v5

    invoke-virtual {v14, v12}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 362
    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    .line 364
    .end local v2    # "ring":Landroid/graphics/drawable/GradientDrawable;
    .end local v3    # "bg":Landroid/graphics/drawable/GradientDrawable;
    .end local v4    # "shrinkAnimation":Landroid/animation/ValueAnimator;
    .end local v6    # "standardThickness":I
    .end local v7    # "largeThickness":I
    .end local v8    # "standardSize":I
    .end local v9    # "baseSize":I
    .end local v10    # "bgSize":I
    .end local v11    # "animatorUpdateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .end local v13    # "growAnimation":Landroid/animation/ValueAnimator;
    .end local v14    # "anims":Landroid/animation/AnimatorSet;
    .end local v16    # "ringColor":I
    :cond_1
    return-void
.end method

.method public blacklist setIsOneToOne(Z)V
    .locals 0
    .param p1, "oneToOne"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 827
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mIsOneToOne:Z

    .line 828
    return-void
.end method

.method public blacklist setLargeIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 727
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 728
    return-void
.end method

.method public blacklist setLayoutColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 822
    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mLayoutColor:I

    .line 823
    return-void
.end method

.method public blacklist setMessageTextColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 851
    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessageTextColor:I

    .line 852
    return-void
.end method

.method public blacklist setMessagingClippingDisabled(Z)V
    .locals 2
    .param p1, "clippingDisabled"    # Z

    .line 1168
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mMessagingClipRect:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 1169
    return-void
.end method

.method public blacklist setNameReplacement(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "nameReplacement"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 293
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mNameReplacement:Ljava/lang/CharSequence;

    .line 294
    return-void
.end method

.method public blacklist setNotificationBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 841
    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mNotificationBackgroundColor:I

    .line 842
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ConversationLayout;->applyNotificationBackgroundColor(Landroid/widget/ImageView;)V

    .line 843
    return-void
.end method

.method public blacklist setSenderTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 832
    iput p1, p0, Lcom/android/internal/widget/ConversationLayout;->mSenderTextColor:I

    .line 833
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 834
    return-void
.end method

.method public blacklist setShortcutIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .param p1, "shortcutIcon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 732
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    .line 733
    return-void
.end method

.method public blacklist setUnreadCount(I)V
    .locals 1
    .param p1, "unreadCount"    # I

    .line 416
    iget-object v0, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NotificationExpandButton;->setNumber(I)V

    .line 417
    return-void
.end method

.method public blacklist shouldHideAppName()Z
    .locals 1

    .line 659
    iget-boolean v0, p0, Lcom/android/internal/widget/ConversationLayout;->mIsCollapsed:Z

    return v0
.end method

.method public blacklist showHistoricMessages(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 989
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mShowHistoricMessages:Z

    .line 990
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateHistoricMessageVisibility()V

    .line 991
    return-void
.end method

.method public blacklist updateExpandability(ZLandroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "expandable"    # Z
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 1153
    iput-boolean p1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandable:Z

    .line 1154
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1155
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1156
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/NotificationExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1157
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1159
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButtonContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1160
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mConversationIconContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1162
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ConversationLayout;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/NotificationExpandButton;->setVisibility(I)V

    .line 1163
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationLayout;->updateContentEndPaddings()V

    .line 1164
    return-void
.end method
