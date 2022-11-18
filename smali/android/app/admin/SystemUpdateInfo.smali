.class public final Landroid/app/admin/SystemUpdateInfo;
.super Ljava/lang/Object;
.source "SystemUpdateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/SystemUpdateInfo$SecurityPatchState;
    }
.end annotation


# static fields
.field private static final greylist-max-o ATTR_ORIGINAL_BUILD:Ljava/lang/String; = "original-build"

.field private static final greylist-max-o ATTR_RECEIVED_TIME:Ljava/lang/String; = "received-time"

.field private static final greylist-max-o ATTR_SECURITY_PATCH_STATE:Ljava/lang/String; = "security-patch-state"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/SystemUpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SECURITY_PATCH_STATE_FALSE:I = 0x1

.field public static final whitelist SECURITY_PATCH_STATE_TRUE:I = 0x2

.field public static final whitelist SECURITY_PATCH_STATE_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SystemUpdateInfo"


# instance fields
.field private final greylist-max-o mReceivedTime:J

.field private final greylist-max-o mSecurityPatchState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 117
    new-instance v0, Landroid/app/admin/SystemUpdateInfo$1;

    invoke-direct {v0}, Landroid/app/admin/SystemUpdateInfo$1;-><init>()V

    sput-object v0, Landroid/app/admin/SystemUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(JI)V
    .locals 0
    .param p1, "receivedTime"    # J
    .param p3, "securityPatchState"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-wide p1, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    .line 76
    iput p3, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    .line 77
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    .line 82
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/admin/SystemUpdateInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/admin/SystemUpdateInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o of(J)Landroid/app/admin/SystemUpdateInfo;
    .locals 2
    .param p0, "receivedTime"    # J

    .line 87
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/admin/SystemUpdateInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/app/admin/SystemUpdateInfo;-><init>(JI)V

    .line 87
    :goto_0
    return-object v0
.end method

.method public static greylist-max-o of(JZ)Landroid/app/admin/SystemUpdateInfo;
    .locals 2
    .param p0, "receivedTime"    # J
    .param p2, "isSecurityPatch"    # Z

    .line 94
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/app/admin/SystemUpdateInfo;

    .line 95
    if-eqz p2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, p0, p1, v1}, Landroid/app/admin/SystemUpdateInfo;-><init>(JI)V

    .line 94
    :goto_1
    return-object v0
.end method

.method public static blacklist readFromXml(Landroid/util/TypedXmlPullParser;)Landroid/app/admin/SystemUpdateInfo;
    .locals 6
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;

    .line 143
    const/4 v0, 0x0

    const-string/jumbo v1, "original-build"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "buildFingerprint":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    return-object v0

    .line 148
    :cond_0
    :try_start_0
    const-string/jumbo v2, "received-time"

    .line 149
    invoke-interface {p0, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 150
    .local v2, "receivedTime":J
    const-string/jumbo v4, "security-patch-state"

    .line 151
    invoke-interface {p0, v0, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 152
    .local v4, "securityPatchState":I
    new-instance v5, Landroid/app/admin/SystemUpdateInfo;

    invoke-direct {v5, v2, v3, v4}, Landroid/app/admin/SystemUpdateInfo;-><init>(JI)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 153
    .end local v2    # "receivedTime":J
    .end local v4    # "securityPatchState":I
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "SystemUpdateInfo"

    const-string v4, "Load xml failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    return-object v0
.end method

.method private static greylist-max-o securityPatchStateToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .line 177
    packed-switch p0, :pswitch_data_0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized security patch state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :pswitch_0
    const-string/jumbo v0, "true"

    return-object v0

    .line 179
    :pswitch_1
    const-string v0, "false"

    return-object v0

    .line 183
    :pswitch_2
    const-string/jumbo v0, "unknown"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 191
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 192
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 193
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/admin/SystemUpdateInfo;

    .line 194
    .local v2, "that":Landroid/app/admin/SystemUpdateInfo;
    iget-wide v3, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    iget-wide v5, v2, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    iget v4, v2, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 192
    .end local v2    # "that":Landroid/app/admin/SystemUpdateInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getReceivedTime()J
    .locals 2

    .line 104
    iget-wide v0, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    return-wide v0
.end method

.method public whitelist getSecurityPatchState()I
    .locals 1

    .line 114
    iget v0, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 200
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 172
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    .line 173
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    invoke-static {v1}, Landroid/app/admin/SystemUpdateInfo;->securityPatchStateToString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 172
    const-string v1, "SystemUpdateInfo (receivedTime = %d, securityPatchState = %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 166
    invoke-virtual {p0}, Landroid/app/admin/SystemUpdateInfo;->getReceivedTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 167
    invoke-virtual {p0}, Landroid/app/admin/SystemUpdateInfo;->getSecurityPatchState()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return-void
.end method

.method public blacklist writeToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;)V
    .locals 4
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    iget-wide v1, p0, Landroid/app/admin/SystemUpdateInfo;->mReceivedTime:J

    const-string/jumbo v3, "received-time"

    invoke-interface {p1, v0, v3, v1, v2}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    iget v1, p0, Landroid/app/admin/SystemUpdateInfo;->mSecurityPatchState:I

    const-string/jumbo v2, "security-patch-state"

    invoke-interface {p1, v0, v2, v1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string/jumbo v2, "original-build"

    invoke-interface {p1, v0, v2, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    return-void
.end method
