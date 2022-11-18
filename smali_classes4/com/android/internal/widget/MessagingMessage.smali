.class public interface abstract Lcom/android/internal/widget/MessagingMessage;
.super Ljava/lang/Object;
.source "MessagingMessage.java"

# interfaces
.implements Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;


# static fields
.field public static final blacklist IMAGE_MIME_TYPE_PREFIX:Ljava/lang/String; = "image/"


# direct methods
.method public static blacklist createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;Lcom/android/internal/widget/ImageResolver;)Lcom/android/internal/widget/MessagingMessage;
    .locals 1
    .param p0, "layout"    # Lcom/android/internal/widget/IMessagingLayout;
    .param p1, "m"    # Landroid/app/Notification$MessagingStyle$Message;
    .param p2, "resolver"    # Lcom/android/internal/widget/ImageResolver;

    .line 38
    invoke-static {p1}, Lcom/android/internal/widget/MessagingMessage;->hasImage(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/MessagingImageMessage;->createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;Lcom/android/internal/widget/ImageResolver;)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/widget/MessagingTextMessage;->createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist dropCache()V
    .locals 0

    .line 46
    invoke-static {}, Lcom/android/internal/widget/MessagingTextMessage;->dropCache()V

    .line 47
    invoke-static {}, Lcom/android/internal/widget/MessagingImageMessage;->dropCache()V

    .line 48
    return-void
.end method

.method public static blacklist hasImage(Landroid/app/Notification$MessagingStyle$Message;)Z
    .locals 2
    .param p0, "m"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 51
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0
.end method

.method public static synthetic blacklist lambda$hideAnimated$0(Lcom/android/internal/widget/MessagingMessage;)V
    .locals 1
    .param p0, "_this"    # Lcom/android/internal/widget/MessagingMessage;

    .line 140
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/internal/widget/MessagingMessage;->setIsHidingAnimated(Z)V

    return-void
.end method


# virtual methods
.method public blacklist getGroup()Lcom/android/internal/widget/MessagingGroup;
    .locals 1

    .line 119
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingMessageState;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMessage()Landroid/app/Notification$MessagingStyle$Message;
    .locals 1

    .line 66
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingMessageState;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist getState()Lcom/android/internal/widget/MessagingMessageState;
.end method

.method public blacklist getView()Landroid/view/View;
    .locals 1

    .line 152
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public abstract blacklist getVisibility()I
.end method

.method public blacklist hasOverlappingRendering()Z
    .locals 1

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hideAnimated()V
    .locals 3

    .line 133
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/internal/widget/MessagingMessage;->setIsHidingAnimated(Z)V

    .line 136
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/MessagingMessage$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/MessagingMessage$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/MessagingMessage;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/MessagingGroup;->performRemoveAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 141
    return-void

    .line 137
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist isHidingAnimated()Z
    .locals 1

    .line 128
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingMessageState;->isHidingAnimated()Z

    move-result v0

    return v0
.end method

.method public blacklist recycle()V
    .locals 1

    .line 148
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingMessageState;->recycle()V

    .line 149
    return-void
.end method

.method public blacklist removeMessage(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p1, "toRecycle":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;>;"
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/widget/MessagingGroup;->removeMessage(Lcom/android/internal/widget/MessagingMessage;Ljava/util/ArrayList;)V

    .line 108
    return-void
.end method

.method public blacklist sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 70
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    .line 73
    .local v0, "ownMessage":Landroid/app/Notification$MessagingStyle$Message;
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    return v1

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 81
    return v1

    .line 83
    :cond_2
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->isRemoteInputHistory()Z

    move-result v2

    .line 84
    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->isRemoteInputHistory()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v1

    .line 89
    .local v2, "hasRemoteInputHistoryChanged":Z
    :goto_0
    if-nez v2, :cond_4

    .line 90
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 91
    return v1

    .line 93
    :cond_4
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 94
    return v1

    .line 96
    :cond_5
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 97
    return v1

    .line 99
    :cond_6
    return v4

    .line 74
    .end local v2    # "hasRemoteInputHistoryChanged":Z
    :cond_7
    :goto_1
    return v1
.end method

.method public blacklist sameAs(Lcom/android/internal/widget/MessagingMessage;)Z
    .locals 1
    .param p1, "message"    # Lcom/android/internal/widget/MessagingMessage;

    .line 103
    invoke-interface {p1}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v0

    return v0
.end method

.method public blacklist setColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .line 155
    return-void
.end method

.method public blacklist setIsHidingAnimated(Z)V
    .locals 1
    .param p1, "isHiding"    # Z

    .line 123
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingMessageState;->setIsHidingAnimated(Z)V

    .line 124
    return-void
.end method

.method public blacklist setIsHistoric(Z)V
    .locals 1
    .param p1, "isHistoric"    # Z

    .line 115
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingMessageState;->setIsHistoric(Z)V

    .line 116
    return-void
.end method

.method public blacklist setMessage(Landroid/app/Notification$MessagingStyle$Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 61
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingMessageState;->setMessage(Landroid/app/Notification$MessagingStyle$Message;)V

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setMessagingGroup(Lcom/android/internal/widget/MessagingGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/android/internal/widget/MessagingGroup;

    .line 111
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingMessageState;->setGroup(Lcom/android/internal/widget/MessagingGroup;)V

    .line 112
    return-void
.end method

.method public abstract blacklist setVisibility(I)V
.end method
