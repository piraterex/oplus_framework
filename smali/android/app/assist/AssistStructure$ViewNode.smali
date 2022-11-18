.class public Landroid/app/assist/AssistStructure$ViewNode;
.super Ljava/lang/Object;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewNode"
.end annotation


# static fields
.field static final blacklist AUTOFILL_FLAGS_HAS_AUTOFILL_HINTS:I = 0x10

.field static final blacklist AUTOFILL_FLAGS_HAS_AUTOFILL_OPTIONS:I = 0x20

.field static final blacklist AUTOFILL_FLAGS_HAS_AUTOFILL_SESSION_ID:I = 0x800

.field static final blacklist AUTOFILL_FLAGS_HAS_AUTOFILL_TYPE:I = 0x8

.field static final blacklist AUTOFILL_FLAGS_HAS_AUTOFILL_VALUE:I = 0x4

.field static final blacklist AUTOFILL_FLAGS_HAS_AUTOFILL_VIEW_ID:I = 0x1

.field static final blacklist AUTOFILL_FLAGS_HAS_AUTOFILL_VIRTUAL_VIEW_ID:I = 0x2

.field static final blacklist AUTOFILL_FLAGS_HAS_HINT_ID_ENTRY:I = 0x1000

.field static final blacklist AUTOFILL_FLAGS_HAS_HTML_INFO:I = 0x40

.field static final blacklist AUTOFILL_FLAGS_HAS_MAX_TEXT_EMS:I = 0x200

.field static final blacklist AUTOFILL_FLAGS_HAS_MAX_TEXT_LENGTH:I = 0x400

.field static final blacklist AUTOFILL_FLAGS_HAS_MIN_TEXT_EMS:I = 0x100

.field static final blacklist AUTOFILL_FLAGS_HAS_TEXT_ID_ENTRY:I = 0x80

.field static final greylist-max-o FLAGS_ACCESSIBILITY_FOCUSED:I = 0x1000

.field static final greylist-max-o FLAGS_ACTIVATED:I = 0x2000

.field static final greylist-max-o FLAGS_ALL_CONTROL:I = -0x10000

.field static final greylist-max-o FLAGS_ASSIST_BLOCKED:I = 0x80

.field static final greylist-max-o FLAGS_CHECKABLE:I = 0x100

.field static final greylist-max-o FLAGS_CHECKED:I = 0x200

.field static final greylist-max-o FLAGS_CLICKABLE:I = 0x400

.field static final greylist-max-o FLAGS_CONTEXT_CLICKABLE:I = 0x4000

.field static final greylist-max-o FLAGS_DISABLED:I = 0x1

.field static final greylist-max-o FLAGS_FOCUSABLE:I = 0x10

.field static final greylist-max-o FLAGS_FOCUSED:I = 0x20

.field static final greylist-max-o FLAGS_HAS_ALPHA:I = 0x20000000

.field static final greylist-max-o FLAGS_HAS_CHILDREN:I = 0x100000

.field static final greylist-max-o FLAGS_HAS_COMPLEX_TEXT:I = 0x800000

.field static final greylist-max-o FLAGS_HAS_CONTENT_DESCRIPTION:I = 0x2000000

.field static final greylist-max-o FLAGS_HAS_ELEVATION:I = 0x10000000

.field static final greylist-max-o FLAGS_HAS_EXTRAS:I = 0x400000

.field static final greylist-max-o FLAGS_HAS_ID:I = 0x200000

.field static final greylist-max-o FLAGS_HAS_INPUT_TYPE:I = 0x40000

.field static final greylist-max-o FLAGS_HAS_LARGE_COORDS:I = 0x4000000

.field static final greylist-max-o FLAGS_HAS_LOCALE_LIST:I = 0x10000

.field static final greylist-max-o FLAGS_HAS_MATRIX:I = 0x40000000

.field static final blacklist FLAGS_HAS_MIME_TYPES:I = -0x80000000

.field static final greylist-max-o FLAGS_HAS_SCROLL:I = 0x8000000

.field static final greylist-max-o FLAGS_HAS_TEXT:I = 0x1000000

.field static final blacklist FLAGS_HAS_URL_DOMAIN:I = 0x80000

.field static final blacklist FLAGS_HAS_URL_SCHEME:I = 0x20000

.field static final greylist-max-o FLAGS_LONG_CLICKABLE:I = 0x800

.field static final greylist-max-o FLAGS_OPAQUE:I = 0x8000

.field static final greylist-max-o FLAGS_SELECTED:I = 0x40

.field static final greylist-max-o FLAGS_VISIBILITY_MASK:I = 0xc

.field public static final whitelist TEXT_COLOR_UNDEFINED:I = 0x1

.field public static final whitelist TEXT_STYLE_BOLD:I = 0x1

.field public static final whitelist TEXT_STYLE_ITALIC:I = 0x2

.field public static final whitelist TEXT_STYLE_STRIKE_THRU:I = 0x8

.field public static final whitelist TEXT_STYLE_UNDERLINE:I = 0x4


# instance fields
.field greylist-max-o mAlpha:F

.field blacklist mAutofillFlags:I

.field greylist-max-o mAutofillHints:[Ljava/lang/String;

.field greylist-max-o mAutofillId:Landroid/view/autofill/AutofillId;

.field greylist-max-o mAutofillOptions:[Ljava/lang/CharSequence;

.field greylist-max-o mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

.field greylist-max-o mAutofillType:I

.field greylist-max-o mAutofillValue:Landroid/view/autofill/AutofillValue;

.field greylist-max-o mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

.field greylist-max-o mClassName:Ljava/lang/String;

.field greylist-max-o mContentDescription:Ljava/lang/CharSequence;

.field greylist-max-o mElevation:F

.field greylist-max-o mExtras:Landroid/os/Bundle;

.field greylist-max-o mFlags:I

.field greylist-max-o mHeight:I

.field blacklist mHintIdEntry:Ljava/lang/String;

.field greylist-max-o mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

.field greylist-max-o mId:I

.field greylist-max-o mIdEntry:Ljava/lang/String;

.field greylist-max-o mIdPackage:Ljava/lang/String;

.field greylist-max-o mIdType:Ljava/lang/String;

.field greylist-max-o mImportantForAutofill:I

.field greylist-max-o mInputType:I

.field greylist-max-o mLocaleList:Landroid/os/LocaleList;

.field greylist-max-o mMatrix:Landroid/graphics/Matrix;

.field greylist-max-o mMaxEms:I

.field greylist-max-o mMaxLength:I

.field greylist-max-o mMinEms:I

.field blacklist mReceiveContentMimeTypes:[Ljava/lang/String;

.field greylist-max-o mSanitized:Z

.field greylist-max-o mScrollX:I

.field greylist-max-o mScrollY:I

.field greylist-max-o mText:Landroid/app/assist/AssistStructure$ViewNodeText;

.field greylist-max-o mTextIdEntry:Ljava/lang/String;

.field greylist-max-o mWebDomain:Ljava/lang/String;

.field greylist-max-o mWebScheme:Ljava/lang/String;

.field greylist-max-o mWidth:I

.field greylist-max-o mX:I

.field greylist-max-o mY:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    .line 634
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    .line 640
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    .line 641
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    .line 642
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    .line 659
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    .line 734
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V
    .locals 6
    .param p1, "reader"    # Landroid/app/assist/AssistStructure$ParcelTransferReader;
    .param p2, "nestingLevel"    # I

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    .line 634
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    .line 640
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    .line 641
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    .line 642
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    .line 659
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    .line 741
    const v0, 0x22222222

    invoke-virtual {p1, v0, p2}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->readParcel(II)Landroid/os/Parcel;

    move-result-object v0

    .line 742
    .local v0, "in":Landroid/os/Parcel;
    iget v1, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    .line 743
    iget-object v1, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mStringReader:Landroid/os/PooledStringReader;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PooledStringReader;

    iget-object v2, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    .line 744
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 743
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/assist/AssistStructure$ViewNode;->initializeFromParcelWithoutChildren(Landroid/os/Parcel;Landroid/os/PooledStringReader;[F)V

    .line 745
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 746
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 753
    .local v1, "numChildren":I
    new-array v2, v1, [Landroid/app/assist/AssistStructure$ViewNode;

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    .line 754
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 755
    iget-object v3, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v4, Landroid/app/assist/AssistStructure$ViewNode;

    add-int/lit8 v5, p2, 0x1

    invoke-direct {v4, p1, v5}, Landroid/app/assist/AssistStructure$ViewNode;-><init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V

    aput-object v4, v3, v2

    .line 754
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 758
    .end local v1    # "numChildren":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    .line 634
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    .line 640
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    .line 641
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    .line 642
    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    .line 659
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    .line 737
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/app/assist/AssistStructure$ViewNode;->initializeFromParcelWithoutChildren(Landroid/os/Parcel;Landroid/os/PooledStringReader;[F)V

    .line 738
    return-void
.end method

.method private static blacklist readString(Landroid/os/Parcel;Landroid/os/PooledStringReader;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "preader"    # Landroid/os/PooledStringReader;

    .line 771
    if-eqz p1, :cond_0

    .line 772
    invoke-virtual {p1}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 774
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist writeString(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Ljava/lang/String;)V
    .locals 0
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "pwriter"    # Landroid/os/PooledStringWriter;
    .param p2, "str"    # Ljava/lang/String;

    .line 762
    if-eqz p1, :cond_0

    .line 763
    invoke-virtual {p1, p2}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 765
    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 767
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist getAlpha()F
    .locals 1

    .line 1354
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    return v0
.end method

.method public whitelist getAutofillHints()[Ljava/lang/String;
    .locals 1

    .line 1207
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAutofillId()Landroid/view/autofill/AutofillId;
    .locals 1

    .line 1181
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public whitelist getAutofillOptions()[Ljava/lang/CharSequence;
    .locals 1

    .line 1241
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getAutofillType()I
    .locals 1

    .line 1193
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    return v0
.end method

.method public whitelist getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 1

    .line 1220
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    return-object v0
.end method

.method public whitelist getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;
    .locals 1
    .param p1, "index"    # I

    .line 1718
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist getChildCount()I
    .locals 1

    .line 1710
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getClassName()Ljava/lang/String;
    .locals 1

    .line 1463
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1472
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getElevation()F
    .locals 1

    .line 1342
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1703
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getHeight()I
    .locals 1

    .line 1318
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    return v0
.end method

.method public whitelist getHint()Ljava/lang/String;
    .locals 1

    .line 1684
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getHintIdEntry()Ljava/lang/String;
    .locals 1

    .line 1695
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHintIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getHtmlInfo()Landroid/view/ViewStructure$HtmlInfo;
    .locals 1

    .line 1536
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    return-object v0
.end method

.method public whitelist getId()I
    .locals 1

    .line 1139
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    return v0
.end method

.method public whitelist getIdEntry()Ljava/lang/String;
    .locals 1

    .line 1169
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIdPackage()Ljava/lang/String;
    .locals 1

    .line 1149
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIdType()Ljava/lang/String;
    .locals 1

    .line 1159
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getImportantForAutofill()I
    .locals 1

    .line 1762
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mImportantForAutofill:I

    return v0
.end method

.method public whitelist getInputType()I
    .locals 1

    .line 1250
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    return v0
.end method

.method public whitelist getLeft()I
    .locals 1

    .line 1281
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    return v0
.end method

.method public whitelist getLocaleList()Landroid/os/LocaleList;
    .locals 1

    .line 1543
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist getMaxTextEms()I
    .locals 1

    .line 1740
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    return v0
.end method

.method public whitelist getMaxTextLength()I
    .locals 1

    .line 1752
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    return v0
.end method

.method public whitelist getMinTextEms()I
    .locals 1

    .line 1729
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    return v0
.end method

.method public whitelist getReceiveContentMimeTypes()[Ljava/lang/String;
    .locals 1

    .line 1553
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getScrollX()I
    .locals 1

    .line 1296
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    return v0
.end method

.method public whitelist getScrollY()I
    .locals 1

    .line 1304
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    return v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1562
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getTextBackgroundColor()I
    .locals 1

    .line 1608
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public whitelist getTextColor()I
    .locals 1

    .line 1594
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public whitelist getTextIdEntry()Ljava/lang/String;
    .locals 1

    .line 1675
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTextLineBaselines()[I
    .locals 1

    .line 1664
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getTextLineCharOffsets()[I
    .locals 1

    .line 1650
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getTextSelectionEnd()I
    .locals 1

    .line 1584
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public whitelist getTextSelectionStart()I
    .locals 1

    .line 1572
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public whitelist getTextSize()F
    .locals 1

    .line 1621
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getTextStyle()I
    .locals 1

    .line 1636
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getTop()I
    .locals 1

    .line 1288
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    return v0
.end method

.method public whitelist getTransformation()Landroid/graphics/Matrix;
    .locals 1

    .line 1330
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public whitelist getVisibility()I
    .locals 1

    .line 1362
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public whitelist getWebDomain()Ljava/lang/String;
    .locals 1

    .line 1489
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWebScheme()Ljava/lang/String;
    .locals 1

    .line 1523
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWidth()I
    .locals 1

    .line 1311
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    return v0
.end method

.method blacklist initializeFromParcelWithoutChildren(Landroid/os/Parcel;Landroid/os/PooledStringReader;[F)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "preader"    # Landroid/os/PooledStringReader;
    .param p3, "tmpMatrix"    # [F

    .line 780
    invoke-static {p1, p2}, Landroid/app/assist/AssistStructure$ViewNode;->readString(Landroid/os/Parcel;Landroid/os/PooledStringReader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    .line 781
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 782
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    .line 783
    .local v0, "flags":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillFlags:I

    .line 784
    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillFlags:I

    .line 785
    .local v1, "autofillFlags":I
    const/high16 v2, 0x200000

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    .line 786
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    .line 787
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 788
    invoke-static {p1, p2}, Landroid/app/assist/AssistStructure$ViewNode;->readString(Landroid/os/Parcel;Landroid/os/PooledStringReader;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    .line 789
    if-eqz v2, :cond_0

    .line 790
    invoke-static {p1, p2}, Landroid/app/assist/AssistStructure$ViewNode;->readString(Landroid/os/Parcel;Landroid/os/PooledStringReader;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    .line 791
    invoke-static {p1, p2}, Landroid/app/assist/AssistStructure$ViewNode;->readString(Landroid/os/Parcel;Landroid/os/PooledStringReader;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    .line 796
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_d

    .line 797
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v4, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    iput-boolean v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    .line 798
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mImportantForAutofill:I

    .line 800
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_3

    .line 801
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 802
    .local v5, "autofillViewId":I
    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_2

    .line 803
    new-instance v6, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-direct {v6, v5, v7}, Landroid/view/autofill/AutofillId;-><init>(II)V

    iput-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    goto :goto_1

    .line 805
    :cond_2
    new-instance v6, Landroid/view/autofill/AutofillId;

    invoke-direct {v6, v5}, Landroid/view/autofill/AutofillId;-><init>(I)V

    iput-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 807
    :goto_1
    and-int/lit16 v6, v1, 0x800

    if-eqz v6, :cond_3

    .line 808
    iget-object v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 811
    .end local v5    # "autofillViewId":I
    :cond_3
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_4

    .line 812
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    .line 814
    :cond_4
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_5

    .line 815
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    .line 817
    :cond_5
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_6

    .line 818
    const-class v5, Landroid/view/autofill/AutofillValue;

    invoke-virtual {p1, v3, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillValue;

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    .line 820
    :cond_6
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_7

    .line 821
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    .line 823
    :cond_7
    and-int/lit8 v5, v1, 0x40

    if-eqz v5, :cond_8

    .line 824
    const-class v5, Landroid/view/ViewStructure$HtmlInfo;

    invoke-virtual {p1, v3, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStructure$HtmlInfo;

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    .line 826
    :cond_8
    and-int/lit16 v5, v1, 0x100

    if-eqz v5, :cond_9

    .line 827
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    .line 829
    :cond_9
    and-int/lit16 v5, v1, 0x200

    if-eqz v5, :cond_a

    .line 830
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    .line 832
    :cond_a
    and-int/lit16 v5, v1, 0x400

    if-eqz v5, :cond_b

    .line 833
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    .line 835
    :cond_b
    and-int/lit16 v5, v1, 0x80

    if-eqz v5, :cond_c

    .line 836
    invoke-static {p1, p2}, Landroid/app/assist/AssistStructure$ViewNode;->readString(Landroid/os/Parcel;Landroid/os/PooledStringReader;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    .line 838
    :cond_c
    and-int/lit16 v5, v1, 0x1000

    if-eqz v5, :cond_d

    .line 839
    invoke-static {p1, p2}, Landroid/app/assist/AssistStructure$ViewNode;->readString(Landroid/os/Parcel;Landroid/os/PooledStringReader;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHintIdEntry:Ljava/lang/String;

    .line 842
    :cond_d
    const/high16 v5, 0x4000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_e

    .line 843
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    .line 844
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    .line 845
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    .line 846
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    goto :goto_2

    .line 848
    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 849
    .local v5, "val":I
    and-int/lit16 v6, v5, 0x7fff

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    .line 850
    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0x7fff

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    .line 851
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 852
    and-int/lit16 v6, v5, 0x7fff

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    .line 853
    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0x7fff

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    .line 855
    .end local v5    # "val":I
    :goto_2
    const/high16 v5, 0x8000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_f

    .line 856
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    .line 857
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    .line 859
    :cond_f
    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v5, v0

    if-eqz v5, :cond_11

    .line 860
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    .line 861
    if-nez p3, :cond_10

    .line 862
    const/16 v5, 0x9

    new-array p3, v5, [F

    .line 864
    :cond_10
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 865
    iget-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, p3}, Landroid/graphics/Matrix;->setValues([F)V

    .line 867
    :cond_11
    const/high16 v5, 0x10000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_12

    .line 868
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    .line 870
    :cond_12
    const/high16 v5, 0x20000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_13

    .line 871
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    .line 873
    :cond_13
    const/high16 v5, 0x2000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_14

    .line 874
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    .line 876
    :cond_14
    const/high16 v5, 0x1000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_16

    .line 877
    new-instance v5, Landroid/app/assist/AssistStructure$ViewNodeText;

    const/high16 v6, 0x800000

    and-int/2addr v6, v0

    if-nez v6, :cond_15

    move v2, v4

    :cond_15
    invoke-direct {v5, p1, v2}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>(Landroid/os/Parcel;Z)V

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    .line 879
    :cond_16
    const/high16 v2, 0x40000

    and-int/2addr v2, v0

    if-eqz v2, :cond_17

    .line 880
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    .line 882
    :cond_17
    const/high16 v2, 0x20000

    and-int/2addr v2, v0

    if-eqz v2, :cond_18

    .line 883
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    .line 885
    :cond_18
    const/high16 v2, 0x80000

    and-int/2addr v2, v0

    if-eqz v2, :cond_19

    .line 886
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    .line 888
    :cond_19
    const/high16 v2, 0x10000

    and-int/2addr v2, v0

    if-eqz v2, :cond_1a

    .line 889
    const-class v2, Landroid/os/LocaleList;

    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/LocaleList;

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    .line 891
    :cond_1a
    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_1b

    .line 892
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    .line 894
    :cond_1b
    const/high16 v2, 0x400000

    and-int/2addr v2, v0

    if-eqz v2, :cond_1c

    .line 895
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    .line 897
    :cond_1c
    return-void
.end method

.method public whitelist isAccessibilityFocused()Z
    .locals 1

    .line 1406
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isActivated()Z
    .locals 1

    .line 1434
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isAssistBlocked()Z
    .locals 1

    .line 1369
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isCheckable()Z
    .locals 1

    .line 1413
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isChecked()Z
    .locals 1

    .line 1420
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isClickable()Z
    .locals 1

    .line 1383
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isContextClickable()Z
    .locals 1

    .line 1453
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 2

    .line 1376
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isFocusable()Z
    .locals 1

    .line 1390
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isFocused()Z
    .locals 1

    .line 1398
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isLongClickable()Z
    .locals 1

    .line 1446
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isOpaque()Z
    .locals 2

    .line 1440
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isSanitized()Z
    .locals 1

    .line 1255
    iget-boolean v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    return v0
.end method

.method public whitelist isSelected()Z
    .locals 1

    .line 1427
    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o setAutofillOverlay(Landroid/app/assist/AssistStructure$AutofillOverlay;)V
    .locals 0
    .param p1, "overlay"    # Landroid/app/assist/AssistStructure$AutofillOverlay;

    .line 1225
    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    .line 1226
    return-void
.end method

.method public greylist-max-o setWebDomain(Ljava/lang/String;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;

    .line 1496
    if-nez p1, :cond_0

    return-void

    .line 1498
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1499
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 1501
    const-string v1, "AssistStructure"

    const-string v2, "Failed to parse web domain"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    return-void

    .line 1505
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    .line 1506
    if-nez v1, :cond_2

    .line 1507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1510
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    .line 1511
    return-void
.end method

.method public greylist-max-o updateAutofillValue(Landroid/view/autofill/AutofillValue;)V
    .locals 2
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 1268
    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    .line 1269
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1270
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-nez v0, :cond_0

    .line 1271
    new-instance v0, Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    .line 1273
    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    .line 1275
    :cond_1
    return-void
.end method

.method blacklist writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Z[FZ)I
    .locals 25
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "pwriter"    # Landroid/os/PooledStringWriter;
    .param p3, "sanitizeOnWrite"    # Z
    .param p4, "tmpMatrix"    # [F
    .param p5, "willWriteChildren"    # Z

    .line 908
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    .line 910
    .local v3, "writeSensitive":Z
    iget v4, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    .line 911
    .local v4, "flags":I
    const/4 v5, 0x0

    .line 913
    .local v5, "autofillFlags":I
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    const/high16 v7, 0x200000

    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 914
    or-int/2addr v4, v7

    .line 916
    :cond_0
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    and-int/lit16 v6, v6, -0x8000

    const/high16 v9, 0x4000000

    const/4 v11, 0x0

    if-nez v6, :cond_3

    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    and-int/lit16 v6, v6, -0x8000

    if-nez v6, :cond_3

    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    and-int/lit16 v6, v6, -0x8000

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v11

    :goto_0
    iget v12, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    and-int/lit16 v12, v12, -0x8000

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    move v12, v11

    :goto_1
    or-int/2addr v6, v12

    if-eqz v6, :cond_4

    .line 918
    :cond_3
    or-int/2addr v4, v9

    .line 920
    :cond_4
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    const/high16 v12, 0x8000000

    if-nez v6, :cond_5

    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    if-eqz v6, :cond_6

    .line 921
    :cond_5
    or-int/2addr v4, v12

    .line 923
    :cond_6
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v13, 0x40000000    # 2.0f

    if-eqz v6, :cond_7

    .line 924
    or-int/2addr v4, v13

    .line 926
    :cond_7
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    const/4 v14, 0x0

    cmpl-float v6, v6, v14

    const/high16 v14, 0x10000000

    if-eqz v6, :cond_8

    .line 927
    or-int/2addr v4, v14

    .line 929
    :cond_8
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v15

    const/high16 v15, 0x20000000

    if-eqz v6, :cond_9

    .line 930
    or-int/2addr v4, v15

    .line 932
    :cond_9
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    const/high16 v16, 0x2000000

    if-eqz v6, :cond_a

    .line 933
    or-int v4, v4, v16

    .line 935
    :cond_a
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    const/high16 v17, 0x800000

    const/high16 v18, 0x1000000

    if-eqz v6, :cond_b

    .line 936
    or-int v4, v4, v18

    .line 937
    invoke-virtual {v6}, Landroid/app/assist/AssistStructure$ViewNodeText;->isSimple()Z

    move-result v6

    if-nez v6, :cond_b

    .line 938
    or-int v4, v4, v17

    .line 941
    :cond_b
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    const/high16 v19, 0x40000

    if-eqz v6, :cond_c

    .line 942
    or-int v4, v4, v19

    .line 944
    :cond_c
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    const/high16 v20, 0x20000

    if-eqz v6, :cond_d

    .line 945
    or-int v4, v4, v20

    .line 947
    :cond_d
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    const/high16 v21, 0x80000

    if-eqz v6, :cond_e

    .line 948
    or-int v4, v4, v21

    .line 950
    :cond_e
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    const/high16 v22, 0x10000

    if-eqz v6, :cond_f

    .line 951
    or-int v4, v4, v22

    .line 953
    :cond_f
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    const/high16 v23, -0x80000000

    if-eqz v6, :cond_10

    .line 954
    or-int v4, v4, v23

    .line 956
    :cond_10
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    const/high16 v24, 0x400000

    if-eqz v6, :cond_11

    .line 957
    or-int v4, v4, v24

    .line 959
    :cond_11
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-eqz v6, :cond_12

    if-eqz p5, :cond_12

    .line 960
    const/high16 v6, 0x100000

    or-int/2addr v4, v6

    .line 962
    :cond_12
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    if-eqz v6, :cond_14

    .line 963
    or-int/lit8 v5, v5, 0x1

    .line 964
    invoke-virtual {v6}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 965
    or-int/lit8 v5, v5, 0x2

    .line 967
    :cond_13
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v6}, Landroid/view/autofill/AutofillId;->hasSession()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 968
    or-int/lit16 v5, v5, 0x800

    .line 971
    :cond_14
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    if-eqz v6, :cond_15

    .line 972
    or-int/lit8 v5, v5, 0x4

    .line 974
    :cond_15
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    if-eqz v6, :cond_16

    .line 975
    or-int/lit8 v5, v5, 0x8

    .line 977
    :cond_16
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    if-eqz v6, :cond_17

    .line 978
    or-int/lit8 v5, v5, 0x10

    .line 980
    :cond_17
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    if-eqz v6, :cond_18

    .line 981
    or-int/lit8 v5, v5, 0x20

    .line 983
    :cond_18
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    instance-of v6, v6, Landroid/os/Parcelable;

    if-eqz v6, :cond_19

    .line 984
    or-int/lit8 v5, v5, 0x40

    .line 986
    :cond_19
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    if-le v6, v8, :cond_1a

    .line 987
    or-int/lit16 v5, v5, 0x100

    .line 989
    :cond_1a
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    if-le v6, v8, :cond_1b

    .line 990
    or-int/lit16 v5, v5, 0x200

    .line 992
    :cond_1b
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    if-le v6, v8, :cond_1c

    .line 993
    or-int/lit16 v5, v5, 0x400

    .line 995
    :cond_1c
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    if-eqz v6, :cond_1d

    .line 996
    or-int/lit16 v5, v5, 0x80

    .line 998
    :cond_1d
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHintIdEntry:Ljava/lang/String;

    if-eqz v6, :cond_1e

    .line 999
    or-int/lit16 v5, v5, 0x1000

    .line 1002
    :cond_1e
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    invoke-static {v1, v2, v6}, Landroid/app/assist/AssistStructure$ViewNode;->writeString(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Ljava/lang/String;)V

    .line 1004
    move v6, v4

    .line 1005
    .local v6, "writtenFlags":I
    if-eqz v5, :cond_20

    iget-boolean v10, v0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    if-nez v10, :cond_1f

    if-nez p3, :cond_20

    .line 1007
    :cond_1f
    and-int/lit16 v6, v4, -0x201

    .line 1009
    :cond_20
    iget-object v10, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    if-eqz v10, :cond_22

    .line 1010
    iget-boolean v10, v10, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    if-eqz v10, :cond_21

    .line 1011
    or-int/lit8 v6, v6, 0x20

    goto :goto_2

    .line 1013
    :cond_21
    and-int/lit8 v6, v6, -0x21

    .line 1017
    :cond_22
    :goto_2
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1018
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1019
    and-int/2addr v7, v4

    if-eqz v7, :cond_23

    .line 1020
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1021
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    if-eq v7, v8, :cond_23

    .line 1022
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    invoke-static {v1, v2, v7}, Landroid/app/assist/AssistStructure$ViewNode;->writeString(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Ljava/lang/String;)V

    .line 1023
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    if-eqz v7, :cond_23

    .line 1024
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    invoke-static {v1, v2, v7}, Landroid/app/assist/AssistStructure$ViewNode;->writeString(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Ljava/lang/String;)V

    .line 1025
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    invoke-static {v1, v2, v7}, Landroid/app/assist/AssistStructure$ViewNode;->writeString(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Ljava/lang/String;)V

    .line 1030
    :cond_23
    if-eqz v5, :cond_33

    .line 1031
    iget-boolean v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1032
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mImportantForAutofill:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    iget-boolean v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    if-nez v7, :cond_25

    if-nez p3, :cond_24

    goto :goto_3

    :cond_24
    move v7, v11

    goto :goto_4

    :cond_25
    :goto_3
    const/4 v7, 0x1

    :goto_4
    move v3, v7

    .line 1034
    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_27

    .line 1035
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1036
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_26

    .line 1037
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1039
    :cond_26
    and-int/lit16 v7, v5, 0x800

    if-eqz v7, :cond_27

    .line 1040
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v7}, Landroid/view/autofill/AutofillId;->getSessionId()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1043
    :cond_27
    and-int/lit8 v7, v5, 0x8

    if-eqz v7, :cond_28

    .line 1044
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    :cond_28
    and-int/lit8 v7, v5, 0x10

    if-eqz v7, :cond_29

    .line 1047
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1049
    :cond_29
    and-int/lit8 v7, v5, 0x4

    if-eqz v7, :cond_2c

    .line 1051
    if-eqz v3, :cond_2a

    .line 1052
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    .local v7, "sanitizedValue":Landroid/view/autofill/AutofillValue;
    goto :goto_5

    .line 1053
    .end local v7    # "sanitizedValue":Landroid/view/autofill/AutofillValue;
    :cond_2a
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    if-eqz v7, :cond_2b

    iget-object v7, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    if-eqz v7, :cond_2b

    .line 1054
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    iget-object v7, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    .restart local v7    # "sanitizedValue":Landroid/view/autofill/AutofillValue;
    goto :goto_5

    .line 1056
    .end local v7    # "sanitizedValue":Landroid/view/autofill/AutofillValue;
    :cond_2b
    const/4 v7, 0x0

    .line 1058
    .restart local v7    # "sanitizedValue":Landroid/view/autofill/AutofillValue;
    :goto_5
    invoke-virtual {v1, v7, v11}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1060
    .end local v7    # "sanitizedValue":Landroid/view/autofill/AutofillValue;
    :cond_2c
    and-int/lit8 v7, v5, 0x20

    if-eqz v7, :cond_2d

    .line 1061
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 1063
    :cond_2d
    and-int/lit8 v7, v5, 0x40

    if-eqz v7, :cond_2e

    .line 1064
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    check-cast v7, Landroid/os/Parcelable;

    invoke-virtual {v1, v7, v11}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1066
    :cond_2e
    and-int/lit16 v7, v5, 0x100

    if-eqz v7, :cond_2f

    .line 1067
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    :cond_2f
    and-int/lit16 v7, v5, 0x200

    if-eqz v7, :cond_30

    .line 1070
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1072
    :cond_30
    and-int/lit16 v7, v5, 0x400

    if-eqz v7, :cond_31

    .line 1073
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1075
    :cond_31
    and-int/lit16 v7, v5, 0x80

    if-eqz v7, :cond_32

    .line 1076
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    invoke-static {v1, v2, v7}, Landroid/app/assist/AssistStructure$ViewNode;->writeString(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Ljava/lang/String;)V

    .line 1078
    :cond_32
    and-int/lit16 v7, v5, 0x1000

    if-eqz v7, :cond_33

    .line 1079
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHintIdEntry:Ljava/lang/String;

    invoke-static {v1, v2, v7}, Landroid/app/assist/AssistStructure$ViewNode;->writeString(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Ljava/lang/String;)V

    .line 1082
    :cond_33
    and-int v7, v4, v9

    if-eqz v7, :cond_34

    .line 1083
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1084
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1085
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1086
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 1088
    :cond_34
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    shl-int/lit8 v7, v7, 0x10

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    or-int/2addr v7, v8

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1089
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    shl-int/lit8 v7, v7, 0x10

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    or-int/2addr v7, v8

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1091
    :goto_6
    and-int v7, v4, v12

    if-eqz v7, :cond_35

    .line 1092
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1093
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1095
    :cond_35
    and-int v7, v4, v13

    if-eqz v7, :cond_37

    .line 1096
    if-nez p4, :cond_36

    .line 1097
    const/16 v7, 0x9

    new-array v7, v7, [F

    .end local p4    # "tmpMatrix":[F
    .local v7, "tmpMatrix":[F
    goto :goto_7

    .line 1096
    .end local v7    # "tmpMatrix":[F
    .restart local p4    # "tmpMatrix":[F
    :cond_36
    move-object/from16 v7, p4

    .line 1099
    .end local p4    # "tmpMatrix":[F
    .restart local v7    # "tmpMatrix":[F
    :goto_7
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1100
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto :goto_8

    .line 1095
    .end local v7    # "tmpMatrix":[F
    .restart local p4    # "tmpMatrix":[F
    :cond_37
    move-object/from16 v7, p4

    .line 1102
    .end local p4    # "tmpMatrix":[F
    .restart local v7    # "tmpMatrix":[F
    :goto_8
    and-int v8, v4, v14

    if-eqz v8, :cond_38

    .line 1103
    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1105
    :cond_38
    and-int v8, v4, v15

    if-eqz v8, :cond_39

    .line 1106
    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1108
    :cond_39
    and-int v8, v4, v16

    if-eqz v8, :cond_3a

    .line 1109
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v8, v1, v11}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1111
    :cond_3a
    and-int v8, v4, v18

    if-eqz v8, :cond_3c

    .line 1112
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    and-int v9, v4, v17

    if-nez v9, :cond_3b

    const/4 v10, 0x1

    goto :goto_9

    :cond_3b
    move v10, v11

    :goto_9
    invoke-virtual {v8, v1, v10, v3}, Landroid/app/assist/AssistStructure$ViewNodeText;->writeToParcel(Landroid/os/Parcel;ZZ)V

    .line 1114
    :cond_3c
    and-int v8, v4, v19

    if-eqz v8, :cond_3d

    .line 1115
    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    :cond_3d
    and-int v8, v4, v20

    if-eqz v8, :cond_3e

    .line 1118
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1120
    :cond_3e
    and-int v8, v4, v21

    if-eqz v8, :cond_3f

    .line 1121
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1123
    :cond_3f
    and-int v8, v4, v22

    if-eqz v8, :cond_40

    .line 1124
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v8, v11}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1126
    :cond_40
    and-int v8, v4, v23

    if-eqz v8, :cond_41

    .line 1127
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mReceiveContentMimeTypes:[Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1129
    :cond_41
    and-int v8, v4, v24

    if-eqz v8, :cond_42

    .line 1130
    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1132
    :cond_42
    return v4
.end method
