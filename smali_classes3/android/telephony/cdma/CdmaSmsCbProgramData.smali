.class public final Landroid/telephony/cdma/CdmaSmsCbProgramData;
.super Ljava/lang/Object;
.source "CdmaSmsCbProgramData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/cdma/CdmaSmsCbProgramData$Category;,
        Landroid/telephony/cdma/CdmaSmsCbProgramData$Operation;
    }
.end annotation


# static fields
.field public static final greylist-max-o ALERT_OPTION_DEFAULT_ALERT:I = 0x1

.field public static final greylist-max-o ALERT_OPTION_HIGH_PRIORITY_ONCE:I = 0xa

.field public static final greylist-max-o ALERT_OPTION_HIGH_PRIORITY_REPEAT:I = 0xb

.field public static final greylist-max-o ALERT_OPTION_LOW_PRIORITY_ONCE:I = 0x6

.field public static final greylist-max-o ALERT_OPTION_LOW_PRIORITY_REPEAT:I = 0x7

.field public static final greylist-max-o ALERT_OPTION_MED_PRIORITY_ONCE:I = 0x8

.field public static final greylist-max-o ALERT_OPTION_MED_PRIORITY_REPEAT:I = 0x9

.field public static final greylist-max-o ALERT_OPTION_NO_ALERT:I = 0x0

.field public static final greylist-max-o ALERT_OPTION_VIBRATE_ONCE:I = 0x2

.field public static final greylist-max-o ALERT_OPTION_VIBRATE_REPEAT:I = 0x3

.field public static final greylist-max-o ALERT_OPTION_VISUAL_ONCE:I = 0x4

.field public static final greylist-max-o ALERT_OPTION_VISUAL_REPEAT:I = 0x5

.field public static final whitelist CATEGORY_CMAS_CHILD_ABDUCTION_EMERGENCY:I = 0x1003

.field public static final whitelist CATEGORY_CMAS_EXTREME_THREAT:I = 0x1001

.field public static final whitelist CATEGORY_CMAS_LAST_RESERVED_VALUE:I = 0x10ff

.field public static final whitelist CATEGORY_CMAS_PRESIDENTIAL_LEVEL_ALERT:I = 0x1000

.field public static final whitelist CATEGORY_CMAS_SEVERE_THREAT:I = 0x1002

.field public static final whitelist CATEGORY_CMAS_TEST_MESSAGE:I = 0x1004

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist OPERATION_ADD_CATEGORY:I = 0x1

.field public static final whitelist OPERATION_CLEAR_CATEGORIES:I = 0x2

.field public static final whitelist OPERATION_DELETE_CATEGORY:I


# instance fields
.field private final greylist-max-o mAlertOption:I

.field private final greylist-max-o mCategory:I

.field private final greylist-max-o mCategoryName:Ljava/lang/String;

.field private final greylist-max-o mLanguage:I

.field private final greylist-max-o mMaxMessages:I

.field private final greylist-max-o mOperation:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 269
    new-instance v0, Landroid/telephony/cdma/CdmaSmsCbProgramData$1;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaSmsCbProgramData$1;-><init>()V

    sput-object v0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(IIIIILjava/lang/String;)V
    .locals 0
    .param p1, "operation"    # I
    .param p2, "category"    # I
    .param p3, "language"    # I
    .param p4, "maxMessages"    # I
    .param p5, "alertOption"    # I
    .param p6, "categoryName"    # Ljava/lang/String;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput p1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mOperation:I

    .line 155
    iput p2, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategory:I

    .line 156
    iput p3, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mLanguage:I

    .line 157
    iput p4, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mMaxMessages:I

    .line 158
    iput p5, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mAlertOption:I

    .line 159
    iput-object p6, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategoryName:Ljava/lang/String;

    .line 160
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mOperation:I

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategory:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mLanguage:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mMaxMessages:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mAlertOption:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategoryName:Ljava/lang/String;

    .line 173
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getAlertOption()I
    .locals 1

    .line 235
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mAlertOption:I

    return v0
.end method

.method public whitelist getCategory()I
    .locals 1

    .line 208
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategory:I

    return v0
.end method

.method public greylist-max-o getCategoryName()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getLanguage()I
    .locals 1

    .line 217
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mLanguage:I

    return v0
.end method

.method public greylist-max-o getMaxMessages()I
    .locals 1

    .line 226
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mMaxMessages:I

    return v0
.end method

.method public whitelist getOperation()I
    .locals 1

    .line 197
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mOperation:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaSmsCbProgramData{operation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mOperation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mLanguage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max messages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mMaxMessages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alert option="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mAlertOption:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 183
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mOperation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mLanguage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mMaxMessages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mAlertOption:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategoryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    return-void
.end method
