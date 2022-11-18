.class public Landroid/app/Notification$Action;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$Action$SemanticAction;,
        Landroid/app/Notification$Action$WearableExtender;,
        Landroid/app/Notification$Action$Extender;,
        Landroid/app/Notification$Action$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o EXTRA_DATA_ONLY_INPUTS:Ljava/lang/String; = "android.extra.DATA_ONLY_INPUTS"

.field public static final whitelist SEMANTIC_ACTION_ARCHIVE:I = 0x5

.field public static final whitelist SEMANTIC_ACTION_CALL:I = 0xa

.field public static final whitelist SEMANTIC_ACTION_CONVERSATION_IS_PHISHING:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SEMANTIC_ACTION_DELETE:I = 0x4

.field public static final whitelist SEMANTIC_ACTION_MARK_AS_READ:I = 0x2

.field public static final whitelist SEMANTIC_ACTION_MARK_AS_UNREAD:I = 0x3

.field public static final whitelist SEMANTIC_ACTION_MARK_CONVERSATION_AS_PRIORITY:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SEMANTIC_ACTION_MUTE:I = 0x6

.field public static final whitelist SEMANTIC_ACTION_NONE:I = 0x0

.field public static final whitelist SEMANTIC_ACTION_REPLY:I = 0x1

.field public static final whitelist SEMANTIC_ACTION_THUMBS_DOWN:I = 0x9

.field public static final whitelist SEMANTIC_ACTION_THUMBS_UP:I = 0x8

.field public static final whitelist SEMANTIC_ACTION_UNMUTE:I = 0x7


# instance fields
.field public whitelist actionIntent:Landroid/app/PendingIntent;

.field public whitelist icon:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private greylist-max-o mAllowGeneratedReplies:Z

.field private blacklist mAuthenticationRequired:Z

.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private greylist-max-p mIcon:Landroid/graphics/drawable/Icon;

.field private final blacklist mIsContextual:Z

.field private final greylist-max-o mRemoteInputs:[Landroid/app/RemoteInput;

.field private final greylist-max-o mSemanticAction:I

.field public whitelist title:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/app/Notification$Action;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemoteInputs(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 2188
    new-instance v0, Landroid/app/Notification$Action$1;

    invoke-direct {v0}, Landroid/app/Notification$Action$1;-><init>()V

    sput-object v0, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 11
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1791
    const-string v0, ""

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v10}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZZ)V

    .line 1793
    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZZ)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "remoteInputs"    # [Landroid/app/RemoteInput;
    .param p6, "allowGeneratedReplies"    # Z
    .param p7, "semanticAction"    # I
    .param p8, "isContextual"    # Z
    .param p9, "requireAuth"    # Z

    .line 1799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1743
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    .line 1800
    iput-object p1, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1801
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1802
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Action;->icon:I

    .line 1804
    :cond_0
    iput-object p2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 1805
    iput-object p3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 1806
    if-eqz p4, :cond_1

    move-object v0, p4

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    .line 1807
    iput-object p5, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    .line 1808
    iput-boolean p6, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    .line 1809
    iput p7, p0, Landroid/app/Notification$Action;->mSemanticAction:I

    .line 1810
    iput-boolean p8, p0, Landroid/app/Notification$Action;->mIsContextual:Z

    .line 1811
    iput-boolean p9, p0, Landroid/app/Notification$Action;->mAuthenticationRequired:Z

    .line 1812
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZZLandroid/app/Notification$Action-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZZ)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1743
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    .line 1768
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1769
    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1770
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1771
    iget-object v1, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Action;->icon:I

    .line 1774
    :cond_0
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 1775
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1776
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 1778
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    .line 1779
    sget-object v1, Landroid/app/RemoteInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/RemoteInput;

    iput-object v1, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    .line 1780
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    .line 1781
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Action;->mSemanticAction:I

    .line 1782
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/app/Notification$Action;->mIsContextual:Z

    .line 1783
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/app/Notification$Action;->mAuthenticationRequired:Z

    .line 1784
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/Notification$Action-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Notification$Action;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist clone()Landroid/app/Notification$Action;
    .locals 11

    .line 2147
    new-instance v10, Landroid/app/Notification$Action;

    .line 2148
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 2151
    iget-object v0, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v4, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    move-object v4, v0

    .line 2152
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    .line 2153
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result v6

    .line 2154
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getSemanticAction()I

    move-result v7

    .line 2155
    invoke-virtual {p0}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v8

    .line 2156
    invoke-virtual {p0}, Landroid/app/Notification$Action;->isAuthenticationRequired()Z

    move-result v9

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZZ)V

    .line 2147
    return-object v10
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1645
    invoke-virtual {p0}, Landroid/app/Notification$Action;->clone()Landroid/app/Notification$Action;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 2161
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAllowGeneratedReplies()Z
    .locals 1

    .line 1837
    iget-boolean v0, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    return v0
.end method

.method public whitelist getDataOnlyRemoteInputs()[Landroid/app/RemoteInput;
    .locals 3

    .line 1878
    iget-object v0, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    const-class v1, Landroid/app/RemoteInput;

    const-string v2, "android.extra.DATA_ONLY_INPUTS"

    invoke-static {v0, v2, v1}, Landroid/app/Notification;->-$$Nest$smgetParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Landroid/app/RemoteInput;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1829
    iget-object v0, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .locals 2

    .line 1818
    iget-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/Notification$Action;->icon:I

    if-eqz v0, :cond_0

    .line 1820
    const-string v1, ""

    invoke-static {v1, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1822
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getRemoteInputs()[Landroid/app/RemoteInput;
    .locals 1

    .line 1846
    iget-object v0, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    return-object v0
.end method

.method public whitelist getSemanticAction()I
    .locals 1

    .line 1855
    iget v0, p0, Landroid/app/Notification$Action;->mSemanticAction:I

    return v0
.end method

.method public whitelist isAuthenticationRequired()Z
    .locals 1

    .line 1889
    iget-boolean v0, p0, Landroid/app/Notification$Action;->mAuthenticationRequired:Z

    return v0
.end method

.method public whitelist isContextual()Z
    .locals 1

    .line 1864
    iget-boolean v0, p0, Landroid/app/Notification$Action;->mIsContextual:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2166
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 2167
    .local v0, "ic":Landroid/graphics/drawable/Icon;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2168
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2169
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2171
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2173
    :goto_0
    iget-object v3, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 2174
    iget-object v3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_1

    .line 2175
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2176
    iget-object v1, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2178
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2180
    :goto_1
    iget-object v1, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2181
    iget-object v1, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2182
    iget-boolean v1, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2183
    iget v1, p0, Landroid/app/Notification$Action;->mSemanticAction:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2184
    iget-boolean v1, p0, Landroid/app/Notification$Action;->mIsContextual:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2185
    iget-boolean v1, p0, Landroid/app/Notification$Action;->mAuthenticationRequired:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2186
    return-void
.end method
