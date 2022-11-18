.class public final Landroid/service/notification/ConversationChannelWrapper;
.super Ljava/lang/Object;
.source "ConversationChannelWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mGroupLabel:Ljava/lang/CharSequence;

.field private blacklist mNotificationChannel:Landroid/app/NotificationChannel;

.field private blacklist mParentChannelLabel:Ljava/lang/CharSequence;

.field private blacklist mPkg:Ljava/lang/String;

.field private blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Landroid/service/notification/ConversationChannelWrapper$1;

    invoke-direct {v0}, Landroid/service/notification/ConversationChannelWrapper$1;-><init>()V

    sput-object v0, Landroid/service/notification/ConversationChannelWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-class v0, Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/app/NotificationChannel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    iput-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mGroupLabel:Ljava/lang/CharSequence;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mParentChannelLabel:Ljava/lang/CharSequence;

    .line 46
    const-class v0, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mPkg:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mUid:I

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 131
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 132
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 133
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/service/notification/ConversationChannelWrapper;

    .line 134
    .local v2, "that":Landroid/service/notification/ConversationChannelWrapper;
    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v2}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getGroupLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Landroid/service/notification/ConversationChannelWrapper;->getGroupLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getParentChannelLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Landroid/service/notification/ConversationChannelWrapper;->getParentChannelLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-virtual {v2}, Landroid/service/notification/ConversationChannelWrapper;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getPkg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/service/notification/ConversationChannelWrapper;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getUid()I

    move-result v3

    invoke-virtual {v2}, Landroid/service/notification/ConversationChannelWrapper;->getUid()I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 134
    :goto_0
    return v0

    .line 132
    .end local v2    # "that":Landroid/service/notification/ConversationChannelWrapper;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getGroupLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 90
    iget-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mGroupLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getNotificationChannel()Landroid/app/NotificationChannel;
    .locals 1

    .line 81
    iget-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mNotificationChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method

.method public blacklist getParentChannelLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mParentChannelLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getPkg()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 1

    .line 106
    iget-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public blacklist getUid()I
    .locals 1

    .line 122
    iget v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mUid:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 144
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getGroupLabel()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getParentChannelLabel()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 145
    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getPkg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/service/notification/ConversationChannelWrapper;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 144
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setGroupLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "groupLabel"    # Ljava/lang/CharSequence;

    .line 94
    iput-object p1, p0, Landroid/service/notification/ConversationChannelWrapper;->mGroupLabel:Ljava/lang/CharSequence;

    .line 95
    return-void
.end method

.method public blacklist setNotificationChannel(Landroid/app/NotificationChannel;)V
    .locals 0
    .param p1, "notificationChannel"    # Landroid/app/NotificationChannel;

    .line 86
    iput-object p1, p0, Landroid/service/notification/ConversationChannelWrapper;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 87
    return-void
.end method

.method public blacklist setParentChannelLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "parentChannelLabel"    # Ljava/lang/CharSequence;

    .line 102
    iput-object p1, p0, Landroid/service/notification/ConversationChannelWrapper;->mParentChannelLabel:Ljava/lang/CharSequence;

    .line 103
    return-void
.end method

.method public blacklist setPkg(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Landroid/service/notification/ConversationChannelWrapper;->mPkg:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public blacklist setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V
    .locals 0
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .line 110
    iput-object p1, p0, Landroid/service/notification/ConversationChannelWrapper;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 111
    return-void
.end method

.method public blacklist setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 126
    iput p1, p0, Landroid/service/notification/ConversationChannelWrapper;->mUid:I

    .line 127
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 53
    iget-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 54
    iget-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mGroupLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mParentChannelLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 57
    iget-object v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 58
    iget v0, p0, Landroid/service/notification/ConversationChannelWrapper;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    return-void
.end method
