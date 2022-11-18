.class public final Landroid/view/contentcapture/ViewNode;
.super Landroid/app/assist/AssistStructure$ViewNode;
.source "ViewNode.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/ViewNode$ViewNodeText;,
        Landroid/view/contentcapture/ViewNode$ViewStructureImpl;
    }
.end annotation


# static fields
.field private static final blacklist FLAGS_ACCESSIBILITY_FOCUSED:J = 0x20000L

.field private static final blacklist FLAGS_ACTIVATED:J = 0x200000L

.field private static final blacklist FLAGS_ASSIST_BLOCKED:J = 0x400L

.field private static final blacklist FLAGS_CHECKABLE:J = 0x40000L

.field private static final blacklist FLAGS_CHECKED:J = 0x80000L

.field private static final blacklist FLAGS_CLICKABLE:J = 0x1000L

.field private static final blacklist FLAGS_CONTEXT_CLICKABLE:J = 0x4000L

.field private static final blacklist FLAGS_DISABLED:J = 0x800L

.field private static final blacklist FLAGS_FOCUSABLE:J = 0x8000L

.field private static final blacklist FLAGS_FOCUSED:J = 0x10000L

.field private static final blacklist FLAGS_HAS_AUTOFILL_HINTS:J = 0x200000000L

.field private static final blacklist FLAGS_HAS_AUTOFILL_ID:J = 0x20L

.field private static final blacklist FLAGS_HAS_AUTOFILL_OPTIONS:J = 0x400000000L

.field private static final blacklist FLAGS_HAS_AUTOFILL_PARENT_ID:J = 0x40L

.field private static final blacklist FLAGS_HAS_AUTOFILL_TYPE:J = 0x80000000L

.field private static final blacklist FLAGS_HAS_AUTOFILL_VALUE:J = 0x100000000L

.field private static final blacklist FLAGS_HAS_CLASSNAME:J = 0x10L

.field private static final blacklist FLAGS_HAS_COMPLEX_TEXT:J = 0x2L

.field private static final blacklist FLAGS_HAS_CONTENT_DESCRIPTION:J = 0x800000L

.field private static final blacklist FLAGS_HAS_EXTRAS:J = 0x1000000L

.field private static final blacklist FLAGS_HAS_HINT_ID_ENTRY:J = 0x800000000L

.field private static final blacklist FLAGS_HAS_ID:J = 0x80L

.field private static final blacklist FLAGS_HAS_INPUT_TYPE:J = 0x4000000L

.field private static final blacklist FLAGS_HAS_LARGE_COORDS:J = 0x100L

.field private static final blacklist FLAGS_HAS_LOCALE_LIST:J = 0x2000000L

.field private static final blacklist FLAGS_HAS_MAX_TEXT_EMS:J = 0x10000000L

.field private static final blacklist FLAGS_HAS_MAX_TEXT_LENGTH:J = 0x20000000L

.field private static final blacklist FLAGS_HAS_MIME_TYPES:J = 0x1000000000L

.field private static final blacklist FLAGS_HAS_MIN_TEXT_EMS:J = 0x8000000L

.field private static final blacklist FLAGS_HAS_SCROLL:J = 0x200L

.field private static final blacklist FLAGS_HAS_TEXT:J = 0x1L

.field private static final blacklist FLAGS_HAS_TEXT_ID_ENTRY:J = 0x40000000L

.field private static final blacklist FLAGS_LONG_CLICKABLE:J = 0x2000L

.field private static final blacklist FLAGS_OPAQUE:J = 0x400000L

.field private static final blacklist FLAGS_SELECTED:J = 0x100000L

.field private static final blacklist FLAGS_VISIBILITY_MASK:J = 0xcL

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAutofillHints:[Ljava/lang/String;

.field private blacklist mAutofillId:Landroid/view/autofill/AutofillId;

.field private blacklist mAutofillOptions:[Ljava/lang/CharSequence;

.field private blacklist mAutofillType:I

.field private blacklist mAutofillValue:Landroid/view/autofill/AutofillValue;

.field private blacklist mClassName:Ljava/lang/String;

.field private blacklist mContentDescription:Ljava/lang/CharSequence;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mFlags:J

.field private blacklist mHeight:I

.field private blacklist mHintIdEntry:Ljava/lang/String;

.field private blacklist mId:I

.field private blacklist mIdEntry:Ljava/lang/String;

.field private blacklist mIdPackage:Ljava/lang/String;

.field private blacklist mIdType:Ljava/lang/String;

.field private blacklist mInputType:I

.field private blacklist mLocaleList:Landroid/os/LocaleList;

.field private blacklist mMaxEms:I

.field private blacklist mMaxLength:I

.field private blacklist mMinEms:I

.field private blacklist mParentAutofillId:Landroid/view/autofill/AutofillId;

.field private blacklist mReceiveContentMimeTypes:[Ljava/lang/String;

.field private blacklist mScrollX:I

.field private blacklist mScrollY:I

.field private blacklist mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

.field private blacklist mTextIdEntry:Ljava/lang/String;

.field private blacklist mWidth:I

.field private blacklist mX:I

.field private blacklist mY:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAutofillId(Landroid/view/contentcapture/ViewNode;)Landroid/view/autofill/AutofillId;
    .locals 0

    iget-object p0, p0, Landroid/view/contentcapture/ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/view/contentcapture/ViewNode;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/view/contentcapture/ViewNode;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/view/contentcapture/ViewNode;)J
    .locals 2

    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmText(Landroid/view/contentcapture/ViewNode;)Landroid/view/contentcapture/ViewNode$ViewNodeText;
    .locals 0

    iget-object p0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutofillHints(Landroid/view/contentcapture/ViewNode;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mAutofillHints:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V
    .locals 0

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutofillOptions(Landroid/view/contentcapture/ViewNode;[Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutofillType(Landroid/view/contentcapture/ViewNode;I)V
    .locals 0

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mAutofillType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutofillValue(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillValue;)V
    .locals 0

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmClassName(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mClassName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContentDescription(Landroid/view/contentcapture/ViewNode;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExtras(Landroid/view/contentcapture/ViewNode;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlags(Landroid/view/contentcapture/ViewNode;J)V
    .locals 0

    iput-wide p1, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHeight(Landroid/view/contentcapture/ViewNode;I)V
    .locals 0

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mHeight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHintIdEntry(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mHintIdEntry:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmId(Landroid/view/contentcapture/ViewNode;I)V
    .locals 0

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIdEntry(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mIdEntry:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIdPackage(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mIdPackage:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIdType(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mIdType:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInputType(Landroid/view/contentcapture/ViewNode;I)V
    .locals 0

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mInputType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLocaleList(Landroid/view/contentcapture/ViewNode;Landroid/os/LocaleList;)V
    .locals 0

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mLocaleList:Landroid/os/LocaleList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMaxEms(Landroid/view/contentcapture/ViewNode;I)V
    .locals 0

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mMaxEms:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMaxLength(Landroid/view/contentcapture/ViewNode;I)V
    .locals 0

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mMaxLength:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMinEms(Landroid/view/contentcapture/ViewNode;I)V
    .locals 0

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mMinEms:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmParentAutofillId(Landroid/view/contentcapture/ViewNode;Landroid/view/autofill/AutofillId;)V
    .locals 0

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mParentAutofillId:Landroid/view/autofill/AutofillId;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReceiveContentMimeTypes(Landroid/view/contentcapture/ViewNode;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScrollX(Landroid/view/contentcapture/ViewNode;I)V
    .locals 0

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mScrollX:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScrollY(Landroid/view/contentcapture/ViewNode;I)V
    .locals 0

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mScrollY:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmText(Landroid/view/contentcapture/ViewNode;Landroid/view/contentcapture/ViewNode$ViewNodeText;)V
    .locals 0

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTextIdEntry(Landroid/view/contentcapture/ViewNode;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/view/contentcapture/ViewNode;->mTextIdEntry:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWidth(Landroid/view/contentcapture/ViewNode;I)V
    .locals 0

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mWidth:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmX(Landroid/view/contentcapture/ViewNode;I)V
    .locals 0

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mX:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmY(Landroid/view/contentcapture/ViewNode;I)V
    .locals 0

    iput p1, p0, Landroid/view/contentcapture/ViewNode;->mY:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/view/contentcapture/ViewNode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 47
    const-class v0, Landroid/view/contentcapture/ViewNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/ViewNode;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNode;-><init>()V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mId:I

    .line 108
    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mMinEms:I

    .line 109
    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mMaxEms:I

    .line 110
    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mMaxLength:I

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mAutofillType:I

    .line 121
    return-void
.end method

.method private constructor blacklist <init>(JLandroid/os/Parcel;)V
    .locals 8
    .param p1, "nodeFlags"    # J
    .param p3, "parcel"    # Landroid/os/Parcel;

    .line 123
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ViewNode;-><init>()V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mId:I

    .line 108
    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mMinEms:I

    .line 109
    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mMaxEms:I

    .line 110
    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mMaxLength:I

    .line 113
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/contentcapture/ViewNode;->mAutofillType:I

    .line 124
    iput-wide p1, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    .line 126
    const-wide/16 v2, 0x20

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 127
    const-class v2, Landroid/view/autofill/AutofillId;

    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    iput-object v2, p0, Landroid/view/contentcapture/ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 129
    :cond_0
    const-wide/16 v6, 0x40

    and-long/2addr v6, p1

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1

    .line 130
    const-class v2, Landroid/view/autofill/AutofillId;

    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    iput-object v2, p0, Landroid/view/contentcapture/ViewNode;->mParentAutofillId:Landroid/view/autofill/AutofillId;

    .line 132
    :cond_1
    const-wide/16 v6, 0x1

    and-long/2addr v6, p1

    cmp-long v2, v6, v4

    if-eqz v2, :cond_3

    .line 133
    new-instance v2, Landroid/view/contentcapture/ViewNode$ViewNodeText;

    const-wide/16 v6, 0x2

    and-long/2addr v6, p1

    cmp-long v6, v6, v4

    if-nez v6, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-direct {v2, p3, v1}, Landroid/view/contentcapture/ViewNode$ViewNodeText;-><init>(Landroid/os/Parcel;Z)V

    iput-object v2, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    .line 135
    :cond_3
    const-wide/16 v1, 0x10

    and-long/2addr v1, p1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_4

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/contentcapture/ViewNode;->mClassName:Ljava/lang/String;

    .line 138
    :cond_4
    const-wide/16 v1, 0x80

    and-long/2addr v1, p1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_5

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/contentcapture/ViewNode;->mId:I

    .line 140
    if-eq v1, v0, :cond_5

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mIdEntry:Ljava/lang/String;

    .line 142
    if-eqz v0, :cond_5

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mIdType:Ljava/lang/String;

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mIdPackage:Ljava/lang/String;

    .line 148
    :cond_5
    const-wide/16 v0, 0x100

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_6

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mX:I

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mY:I

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mWidth:I

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mHeight:I

    goto :goto_0

    .line 154
    :cond_6
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .local v0, "val":I
    and-int/lit16 v1, v0, 0x7fff

    iput v1, p0, Landroid/view/contentcapture/ViewNode;->mX:I

    .line 156
    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0x7fff

    iput v1, p0, Landroid/view/contentcapture/ViewNode;->mY:I

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 158
    and-int/lit16 v1, v0, 0x7fff

    iput v1, p0, Landroid/view/contentcapture/ViewNode;->mWidth:I

    .line 159
    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0x7fff

    iput v1, p0, Landroid/view/contentcapture/ViewNode;->mHeight:I

    .line 161
    .end local v0    # "val":I
    :goto_0
    const-wide/16 v0, 0x200

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mScrollX:I

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mScrollY:I

    .line 165
    :cond_7
    const-wide/32 v0, 0x800000

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_8

    .line 166
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    .line 168
    :cond_8
    const-wide/32 v0, 0x1000000

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_9

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mExtras:Landroid/os/Bundle;

    .line 171
    :cond_9
    const-wide/32 v0, 0x2000000

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_a

    .line 172
    const-class v0, Landroid/os/LocaleList;

    invoke-virtual {p3, v3, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mLocaleList:Landroid/os/LocaleList;

    .line 174
    :cond_a
    const-wide v0, 0x1000000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_b

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    .line 177
    :cond_b
    const-wide/32 v0, 0x4000000

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_c

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mInputType:I

    .line 180
    :cond_c
    const-wide/32 v0, 0x8000000

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_d

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mMinEms:I

    .line 183
    :cond_d
    const-wide/32 v0, 0x10000000

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_e

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mMaxEms:I

    .line 186
    :cond_e
    const-wide/32 v0, 0x20000000

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_f

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mMaxLength:I

    .line 189
    :cond_f
    const-wide/32 v0, 0x40000000

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_10

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mTextIdEntry:Ljava/lang/String;

    .line 192
    :cond_10
    const-wide v0, 0x80000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_11

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode;->mAutofillType:I

    .line 195
    :cond_11
    const-wide v0, 0x200000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_12

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mAutofillHints:[Ljava/lang/String;

    .line 198
    :cond_12
    const-wide v0, 0x100000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_13

    .line 199
    const-class v0, Landroid/view/autofill/AutofillValue;

    invoke-virtual {p3, v3, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillValue;

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    .line 201
    :cond_13
    const-wide v0, 0x400000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_14

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    .line 204
    :cond_14
    const-wide v0, 0x800000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_15

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode;->mHintIdEntry:Ljava/lang/String;

    .line 207
    :cond_15
    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ViewNode;
    .locals 4
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 649
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 650
    .local v0, "nodeFlags":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/view/contentcapture/ViewNode;

    invoke-direct {v2, v0, v1, p0}, Landroid/view/contentcapture/ViewNode;-><init>(JLandroid/os/Parcel;)V

    :goto_0
    return-object v2
.end method

.method private blacklist writeSelfToParcel(Landroid/os/Parcel;I)V
    .locals 42
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "parcelFlags"    # I

    .line 484
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-wide v3, v0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    .line 486
    .local v3, "nodeFlags":J
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    const-wide/16 v6, 0x20

    if-eqz v5, :cond_0

    .line 487
    or-long/2addr v3, v6

    .line 490
    :cond_0
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mParentAutofillId:Landroid/view/autofill/AutofillId;

    const-wide/16 v8, 0x40

    if-eqz v5, :cond_1

    .line 491
    or-long/2addr v3, v8

    .line 494
    :cond_1
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    const-wide/16 v10, 0x2

    const-wide/16 v12, 0x1

    if-eqz v5, :cond_2

    .line 495
    or-long/2addr v3, v12

    .line 496
    invoke-virtual {v5}, Landroid/view/contentcapture/ViewNode$ViewNodeText;->isSimple()Z

    move-result v5

    if-nez v5, :cond_2

    .line 497
    or-long/2addr v3, v10

    .line 500
    :cond_2
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mClassName:Ljava/lang/String;

    const-wide/16 v14, 0x10

    if-eqz v5, :cond_3

    .line 501
    or-long/2addr v3, v14

    .line 503
    :cond_3
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mId:I

    const-wide/16 v16, 0x80

    const/4 v14, -0x1

    if-eq v5, v14, :cond_4

    .line 504
    or-long v3, v3, v16

    .line 506
    :cond_4
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mX:I

    and-int/lit16 v5, v5, -0x8000

    const-wide/16 v18, 0x100

    if-nez v5, :cond_7

    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mY:I

    and-int/lit16 v5, v5, -0x8000

    if-nez v5, :cond_7

    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mWidth:I

    and-int/lit16 v5, v5, -0x8000

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    :goto_0
    iget v15, v0, Landroid/view/contentcapture/ViewNode;->mHeight:I

    and-int/lit16 v15, v15, -0x8000

    if-eqz v15, :cond_6

    const/4 v15, 0x1

    goto :goto_1

    :cond_6
    const/4 v15, 0x0

    :goto_1
    or-int/2addr v5, v15

    if-eqz v5, :cond_8

    .line 508
    :cond_7
    or-long v3, v3, v18

    .line 510
    :cond_8
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mScrollX:I

    const-wide/16 v20, 0x200

    if-nez v5, :cond_9

    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mScrollY:I

    if-eqz v5, :cond_a

    .line 511
    :cond_9
    or-long v3, v3, v20

    .line 513
    :cond_a
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    const-wide/32 v22, 0x800000

    if-eqz v5, :cond_b

    .line 514
    or-long v3, v3, v22

    .line 516
    :cond_b
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mExtras:Landroid/os/Bundle;

    const-wide/32 v24, 0x1000000

    if-eqz v5, :cond_c

    .line 517
    or-long v3, v3, v24

    .line 519
    :cond_c
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mLocaleList:Landroid/os/LocaleList;

    const-wide/32 v26, 0x2000000

    if-eqz v5, :cond_d

    .line 520
    or-long v3, v3, v26

    .line 522
    :cond_d
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    const-wide v28, 0x1000000000L

    if-eqz v5, :cond_e

    .line 523
    or-long v3, v3, v28

    .line 525
    :cond_e
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mInputType:I

    const-wide/32 v30, 0x4000000

    if-eqz v5, :cond_f

    .line 526
    or-long v3, v3, v30

    .line 528
    :cond_f
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mMinEms:I

    const-wide/32 v32, 0x8000000

    if-le v5, v14, :cond_10

    .line 529
    or-long v3, v3, v32

    .line 531
    :cond_10
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mMaxEms:I

    const-wide/32 v34, 0x10000000

    if-le v5, v14, :cond_11

    .line 532
    or-long v3, v3, v34

    .line 534
    :cond_11
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mMaxLength:I

    const-wide/32 v36, 0x20000000

    if-le v5, v14, :cond_12

    .line 535
    or-long v3, v3, v36

    .line 537
    :cond_12
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mTextIdEntry:Ljava/lang/String;

    const-wide/32 v38, 0x40000000

    if-eqz v5, :cond_13

    .line 538
    or-long v3, v3, v38

    .line 540
    :cond_13
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    if-eqz v5, :cond_14

    .line 541
    const-wide v40, 0x100000000L

    or-long v3, v3, v40

    .line 543
    :cond_14
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mAutofillType:I

    if-eqz v5, :cond_15

    .line 544
    const-wide v40, 0x80000000L

    or-long v3, v3, v40

    .line 546
    :cond_15
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mAutofillHints:[Ljava/lang/String;

    if-eqz v5, :cond_16

    .line 547
    const-wide v40, 0x200000000L

    or-long v3, v3, v40

    .line 549
    :cond_16
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_17

    .line 550
    const-wide v40, 0x400000000L

    or-long v3, v3, v40

    .line 552
    :cond_17
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mHintIdEntry:Ljava/lang/String;

    if-eqz v5, :cond_18

    .line 553
    const-wide v40, 0x800000000L

    or-long v3, v3, v40

    .line 555
    :cond_18
    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 557
    and-long v5, v3, v6

    const-wide/16 v40, 0x0

    cmp-long v5, v5, v40

    if-eqz v5, :cond_19

    .line 558
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v5, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 560
    :cond_19
    and-long v5, v3, v8

    cmp-long v5, v5, v40

    if-eqz v5, :cond_1a

    .line 561
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mParentAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v5, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 563
    :cond_1a
    and-long v5, v3, v12

    cmp-long v5, v5, v40

    if-eqz v5, :cond_1c

    .line 564
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    and-long v6, v3, v10

    cmp-long v6, v6, v40

    if-nez v6, :cond_1b

    const/4 v15, 0x1

    goto :goto_2

    :cond_1b
    const/4 v15, 0x0

    :goto_2
    invoke-virtual {v5, v1, v15}, Landroid/view/contentcapture/ViewNode$ViewNodeText;->writeToParcel(Landroid/os/Parcel;Z)V

    .line 566
    :cond_1c
    const-wide/16 v5, 0x10

    and-long/2addr v5, v3

    cmp-long v5, v5, v40

    if-eqz v5, :cond_1d

    .line 567
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 569
    :cond_1d
    and-long v5, v3, v16

    cmp-long v5, v5, v40

    if-eqz v5, :cond_1e

    .line 570
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mId:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mId:I

    if-eq v5, v14, :cond_1e

    .line 572
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mIdEntry:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 573
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mIdEntry:Ljava/lang/String;

    if-eqz v5, :cond_1e

    .line 574
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mIdType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 575
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mIdPackage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 579
    :cond_1e
    and-long v5, v3, v18

    cmp-long v5, v5, v40

    if-eqz v5, :cond_1f

    .line 580
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mX:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mY:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mWidth:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mHeight:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 585
    :cond_1f
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mY:I

    shl-int/lit8 v5, v5, 0x10

    iget v6, v0, Landroid/view/contentcapture/ViewNode;->mX:I

    or-int/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mHeight:I

    shl-int/lit8 v5, v5, 0x10

    iget v6, v0, Landroid/view/contentcapture/ViewNode;->mWidth:I

    or-int/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    :goto_3
    and-long v5, v3, v20

    cmp-long v5, v5, v40

    if-eqz v5, :cond_20

    .line 589
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mScrollX:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 590
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mScrollY:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    :cond_20
    and-long v5, v3, v22

    cmp-long v5, v5, v40

    if-eqz v5, :cond_21

    .line 593
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v5, v1, v6}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 595
    :cond_21
    and-long v5, v3, v24

    cmp-long v5, v5, v40

    if-eqz v5, :cond_22

    .line 596
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 598
    :cond_22
    and-long v5, v3, v26

    cmp-long v5, v5, v40

    if-eqz v5, :cond_23

    .line 599
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mLocaleList:Landroid/os/LocaleList;

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 601
    :cond_23
    and-long v5, v3, v28

    cmp-long v5, v5, v40

    if-eqz v5, :cond_24

    .line 602
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 604
    :cond_24
    and-long v5, v3, v30

    cmp-long v5, v5, v40

    if-eqz v5, :cond_25

    .line 605
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mInputType:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    :cond_25
    and-long v5, v3, v32

    cmp-long v5, v5, v40

    if-eqz v5, :cond_26

    .line 608
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mMinEms:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    :cond_26
    and-long v5, v3, v34

    cmp-long v5, v5, v40

    if-eqz v5, :cond_27

    .line 611
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mMaxEms:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    :cond_27
    and-long v5, v3, v36

    cmp-long v5, v5, v40

    if-eqz v5, :cond_28

    .line 614
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mMaxLength:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    :cond_28
    and-long v5, v3, v38

    cmp-long v5, v5, v40

    if-eqz v5, :cond_29

    .line 617
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mTextIdEntry:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 619
    :cond_29
    const-wide v5, 0x80000000L

    and-long/2addr v5, v3

    cmp-long v5, v5, v40

    if-eqz v5, :cond_2a

    .line 620
    iget v5, v0, Landroid/view/contentcapture/ViewNode;->mAutofillType:I

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    :cond_2a
    const-wide v5, 0x200000000L

    and-long/2addr v5, v3

    cmp-long v5, v5, v40

    if-eqz v5, :cond_2b

    .line 623
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mAutofillHints:[Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 625
    :cond_2b
    const-wide v5, 0x100000000L

    and-long/2addr v5, v3

    cmp-long v5, v5, v40

    if-eqz v5, :cond_2c

    .line 626
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 628
    :cond_2c
    const-wide v5, 0x400000000L

    and-long/2addr v5, v3

    cmp-long v5, v5, v40

    if-eqz v5, :cond_2d

    .line 629
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 631
    :cond_2d
    const-wide v5, 0x800000000L

    and-long/2addr v5, v3

    cmp-long v5, v5, v40

    if-eqz v5, :cond_2e

    .line 632
    iget-object v5, v0, Landroid/view/contentcapture/ViewNode;->mHintIdEntry:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 634
    :cond_2e
    return-void
.end method

.method public static blacklist writeToParcel(Landroid/os/Parcel;Landroid/view/contentcapture/ViewNode;I)V
    .locals 2
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "node"    # Landroid/view/contentcapture/ViewNode;
    .param p2, "flags"    # I

    .line 639
    if-nez p1, :cond_0

    .line 640
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 642
    :cond_0
    invoke-direct {p1, p0, p2}, Landroid/view/contentcapture/ViewNode;->writeSelfToParcel(Landroid/os/Parcel;I)V

    .line 644
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist getAutofillHints()[Ljava/lang/String;
    .locals 1

    .line 458
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mAutofillHints:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAutofillId()Landroid/view/autofill/AutofillId;
    .locals 1

    .line 221
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public whitelist getAutofillOptions()[Ljava/lang/CharSequence;
    .locals 1

    .line 468
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getAutofillType()I
    .locals 1

    .line 453
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mAutofillType:I

    return v0
.end method

.method public whitelist getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 1

    .line 463
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    return-object v0
.end method

.method public whitelist getClassName()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 357
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 363
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getHeight()I
    .locals 1

    .line 286
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mHeight:I

    return v0
.end method

.method public whitelist getHint()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mHint:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getHintIdEntry()Ljava/lang/String;
    .locals 1

    .line 375
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mHintIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getId()I
    .locals 1

    .line 238
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mId:I

    return v0
.end method

.method public whitelist getIdEntry()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIdPackage()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mIdPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIdType()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mIdType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getInputType()I
    .locals 1

    .line 427
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mInputType:I

    return v0
.end method

.method public whitelist getLeft()I
    .locals 1

    .line 261
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mX:I

    return v0
.end method

.method public whitelist getLocaleList()Landroid/os/LocaleList;
    .locals 1

    .line 480
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist getMaxTextEms()I
    .locals 1

    .line 437
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mMaxEms:I

    return v0
.end method

.method public whitelist getMaxTextLength()I
    .locals 1

    .line 442
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mMaxLength:I

    return v0
.end method

.method public whitelist getMinTextEms()I
    .locals 1

    .line 432
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mMinEms:I

    return v0
.end method

.method public whitelist getParentAutofillId()Landroid/view/autofill/AutofillId;
    .locals 1

    .line 215
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mParentAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public whitelist getReceiveContentMimeTypes()[Ljava/lang/String;
    .locals 1

    .line 474
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getScrollX()I
    .locals 1

    .line 271
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mScrollX:I

    return v0
.end method

.method public whitelist getScrollY()I
    .locals 1

    .line 276
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mScrollY:I

    return v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 1

    .line 227
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getTextBackgroundColor()I
    .locals 1

    .line 395
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextBackgroundColor:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public whitelist getTextColor()I
    .locals 1

    .line 390
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextColor:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public whitelist getTextIdEntry()Ljava/lang/String;
    .locals 1

    .line 448
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mTextIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTextLineBaselines()[I
    .locals 1

    .line 417
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineBaselines:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getTextLineCharOffsets()[I
    .locals 1

    .line 411
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineCharOffsets:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getTextSelectionEnd()I
    .locals 1

    .line 385
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionEnd:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public whitelist getTextSelectionStart()I
    .locals 1

    .line 380
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionStart:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public whitelist getTextSize()F
    .locals 1

    .line 400
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSize:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getTextStyle()I
    .locals 1

    .line 405
    iget-object v0, p0, Landroid/view/contentcapture/ViewNode;->mText:Landroid/view/contentcapture/ViewNode$ViewNodeText;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextStyle:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getTop()I
    .locals 1

    .line 266
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mY:I

    return v0
.end method

.method public whitelist getVisibility()I
    .locals 4

    .line 422
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/16 v2, 0xc

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public whitelist getWidth()I
    .locals 1

    .line 281
    iget v0, p0, Landroid/view/contentcapture/ViewNode;->mWidth:I

    return v0
.end method

.method public whitelist isAccessibilityFocused()Z
    .locals 4

    .line 326
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/32 v2, 0x20000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isActivated()Z
    .locals 4

    .line 346
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/32 v2, 0x200000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isAssistBlocked()Z
    .locals 4

    .line 291
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/16 v2, 0x400

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isCheckable()Z
    .locals 4

    .line 331
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/32 v2, 0x40000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isChecked()Z
    .locals 4

    .line 336
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/32 v2, 0x80000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isClickable()Z
    .locals 4

    .line 301
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isContextClickable()Z
    .locals 4

    .line 311
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 4

    .line 296
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/16 v2, 0x800

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isFocusable()Z
    .locals 4

    .line 316
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/32 v2, 0x8000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isFocused()Z
    .locals 4

    .line 321
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isLongClickable()Z
    .locals 4

    .line 306
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isOpaque()Z
    .locals 4

    .line 351
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/32 v2, 0x400000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isSelected()Z
    .locals 4

    .line 341
    iget-wide v0, p0, Landroid/view/contentcapture/ViewNode;->mFlags:J

    const-wide/32 v2, 0x100000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
