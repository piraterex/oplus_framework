.class public Lcom/android/internal/widget/CallLayout;
.super Landroid/widget/FrameLayout;
.source "CallLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private blacklist mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mConversationIconView:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mConversationText:Landroid/widget/TextView;

.field private blacklist mIcon:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mLargeIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mLayoutColor:I

.field private final blacklist mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

.field private blacklist mUser:Landroid/app/Person;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 55
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 69
    return-void
.end method

.method private blacklist setUser(Landroid/app/Person;)V
    .locals 0
    .param p1, "user"    # Landroid/app/Person;

    .line 133
    iput-object p1, p0, Lcom/android/internal/widget/CallLayout;->mUser:Landroid/app/Person;

    .line 134
    return-void
.end method

.method private blacklist updateCallLayout()V
    .locals 5

    .line 87
    const-string v0, ""

    .line 88
    .local v0, "callerName":Ljava/lang/CharSequence;
    const-string v1, ""

    .line 89
    .local v1, "symbol":Ljava/lang/String;
    const/4 v2, 0x0

    .line 90
    .local v2, "icon":Landroid/graphics/drawable/Icon;
    iget-object v3, p0, Lcom/android/internal/widget/CallLayout;->mUser:Landroid/app/Person;

    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {v3}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 92
    iget-object v3, p0, Lcom/android/internal/widget/CallLayout;->mUser:Landroid/app/Person;

    invoke-virtual {v3}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 93
    iget-object v3, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/widget/PeopleHelper;->findNamePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    :cond_0
    if-nez v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/android/internal/widget/CallLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 98
    :cond_1
    if-nez v2, :cond_2

    .line 99
    iget-object v3, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget v4, p0, Lcom/android/internal/widget/CallLayout;->mLayoutColor:I

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 102
    :cond_2
    iget-object v3, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/CachingIconView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 103
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onFinishInflate$0$com-android-internal-widget-CallLayout(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "forceHidden"    # Ljava/lang/Boolean;

    .line 82
    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 83
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .locals 2

    .line 73
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 74
    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {p0}, Lcom/android/internal/widget/CallLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->init(Landroid/content/Context;)V

    .line 75
    const v0, 0x1020281

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CallLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mConversationText:Landroid/widget/TextView;

    .line 76
    const v0, 0x102027b

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CallLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    .line 77
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CallLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    .line 78
    const v0, 0x102027d

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CallLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    .line 81
    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    new-instance v1, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/CallLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CachingIconView;->setOnForceHiddenChangedListener(Ljava/util/function/Consumer;)V

    .line 84
    return-void
.end method

.method public blacklist setData(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 128
    const-string v0, "android.callPerson"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/CallLayout;->setUser(Landroid/app/Person;)V

    .line 129
    invoke-direct {p0}, Lcom/android/internal/widget/CallLayout;->updateCallLayout()V

    .line 130
    return-void
.end method

.method public blacklist setLargeIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/android/internal/widget/CallLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 121
    return-void
.end method

.method public blacklist setLayoutColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 107
    iput p1, p0, Lcom/android/internal/widget/CallLayout;->mLayoutColor:I

    .line 108
    return-void
.end method

.method public blacklist setNotificationBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CachingIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 116
    return-void
.end method
