.class public final Landroid/service/notification/Adjustment;
.super Ljava/lang/Object;
.source "Adjustment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/Adjustment$Keys;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/Adjustment;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist KEY_CONTEXTUAL_ACTIONS:Ljava/lang/String; = "key_contextual_actions"

.field public static final greylist-max-o KEY_GROUP_KEY:Ljava/lang/String; = "key_group_key"

.field public static final whitelist KEY_IMPORTANCE:Ljava/lang/String; = "key_importance"

.field public static final whitelist KEY_NOT_CONVERSATION:Ljava/lang/String; = "key_not_conversation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_PEOPLE:Ljava/lang/String; = "key_people"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_RANKING_SCORE:Ljava/lang/String; = "key_ranking_score"

.field public static final whitelist KEY_SNOOZE_CRITERIA:Ljava/lang/String; = "key_snooze_criteria"

.field public static final whitelist KEY_TEXT_REPLIES:Ljava/lang/String; = "key_text_replies"

.field public static final whitelist KEY_USER_SENTIMENT:Ljava/lang/String; = "key_user_sentiment"


# instance fields
.field private final greylist-max-o mExplanation:Ljava/lang/CharSequence;

.field private blacklist mIssuer:Ljava/lang/String;

.field private final greylist-max-o mKey:Ljava/lang/String;

.field private final greylist-max-o mPackage:Ljava/lang/String;

.field private final greylist-max-o mSignals:Landroid/os/Bundle;

.field private final greylist-max-o mUser:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 202
    new-instance v0, Landroid/service/notification/Adjustment$1;

    invoke-direct {v0}, Landroid/service/notification/Adjustment$1;-><init>()V

    sput-object v0, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    goto :goto_0

    .line 185
    :cond_0
    iput-object v1, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    .line 187
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    goto :goto_1

    .line 190
    :cond_1
    iput-object v1, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    .line 192
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    goto :goto_2

    .line 195
    :cond_2
    iput-object v1, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    .line 197
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/Adjustment;->mUser:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/Adjustment;->mIssuer:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "signals"    # Landroid/os/Bundle;
    .param p4, "explanation"    # Ljava/lang/CharSequence;
    .param p5, "user"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    .line 152
    iput-object p3, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    .line 153
    iput-object p4, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    .line 154
    iput p5, p0, Landroid/service/notification/Adjustment;->mUser:I

    .line 155
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/CharSequence;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "signals"    # Landroid/os/Bundle;
    .param p4, "explanation"    # Ljava/lang/CharSequence;
    .param p5, "userHandle"    # Landroid/os/UserHandle;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    .line 171
    iput-object p2, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    .line 172
    iput-object p3, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    .line 173
    iput-object p4, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    .line 174
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iput v0, p0, Landroid/service/notification/Adjustment;->mUser:I

    .line 175
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExplanation()Ljava/lang/CharSequence;
    .locals 1

    .line 223
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getIssuer()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mIssuer:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getKey()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackage()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSignals()Landroid/os/Bundle;
    .locals 1

    .line 227
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getUser()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 233
    iget v0, p0, Landroid/service/notification/Adjustment;->mUser:I

    return v0
.end method

.method public whitelist getUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 237
    iget v0, p0, Landroid/service/notification/Adjustment;->mUser:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setIssuer(Ljava/lang/String;)V
    .locals 0
    .param p1, "issuer"    # Ljava/lang/String;

    .line 280
    iput-object p1, p0, Landroid/service/notification/Adjustment;->mIssuer:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adjustment{mSignals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 247
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    :goto_0
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    :goto_1
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 263
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    :goto_2
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 266
    iget v0, p0, Landroid/service/notification/Adjustment;->mUser:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mIssuer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    return-void
.end method
