.class public final Landroid/view/inputmethod/InputMethodSubtype;
.super Ljava/lang/Object;
.source "InputMethodSubtype.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o EXTRA_KEY_UNTRANSLATABLE_STRING_IN_SUBTYPE_NAME:Ljava/lang/String; = "UntranslatableReplacementStringInSubtypeName"

.field private static final greylist-max-o EXTRA_VALUE_KEY_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final greylist-max-o EXTRA_VALUE_PAIR_SEPARATOR:Ljava/lang/String; = ","

.field private static final greylist-max-o LANGUAGE_TAG_NONE:Ljava/lang/String; = ""

.field public static final greylist-max-o SUBTYPE_ID_NONE:I

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private volatile greylist-max-o mCachedLocaleObj:Ljava/util/Locale;

.field private volatile greylist-max-o mExtraValueHashMapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mIsAsciiCapable:Z

.field private final greylist-max-o mIsAuxiliary:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mOverridesImplicitlyEnabledSubtype:Z

.field private final greylist-max-o mSubtypeExtraValue:Ljava/lang/String;

.field private final greylist-max-o mSubtypeHashCode:I

.field private final greylist-max-o mSubtypeIconResId:I

.field private final greylist-max-o mSubtypeId:I

.field private final greylist-max-o mSubtypeLanguageTag:Ljava/lang/String;

.field private final greylist-max-o mSubtypeLocale:Ljava/lang/String;

.field private final greylist-max-o mSubtypeMode:Ljava/lang/String;

.field private final greylist-max-o mSubtypeNameResId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 67
    const-class v0, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    .line 640
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodSubtype$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9
    .param p1, "nameId"    # I
    .param p2, "iconId"    # I
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;
    .param p5, "extraValue"    # Ljava/lang/String;
    .param p6, "isAuxiliary"    # Z
    .param p7, "overridesImplicitlyEnabledSubtype"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 248
    return-void
.end method

.method public constructor whitelist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 9
    .param p1, "nameId"    # I
    .param p2, "iconId"    # I
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;
    .param p5, "extraValue"    # Ljava/lang/String;
    .param p6, "isAuxiliary"    # Z
    .param p7, "overridesImplicitlyEnabledSubtype"    # Z
    .param p8, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    const/4 v8, 0x0

    move v0, p1

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-static/range {v0 .. v8}, Landroid/view/inputmethod/InputMethodSubtype;->getBuilder(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZ)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    move-object v1, p0

    invoke-direct {p0, v0}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)V

    .line 286
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLock:Ljava/lang/Object;

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "s":Ljava/lang/String;
    const-string v1, ""

    if-eqz v0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iput-object v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    iput-object v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_3

    move-object v1, v0

    :cond_3
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_6

    move v2, v3

    :cond_6
    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    .line 330
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)V
    .locals 7
    .param p1, "builder"    # Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLock:Ljava/lang/Object;

    .line 293
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeNameResId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    .line 294
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeIconResId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    .line 295
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeLocale(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    .line 296
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeLanguageTag(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    .line 297
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeMode(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    .line 298
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeExtraValue(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    .line 299
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmIsAuxiliary(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    .line 300
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmOverridesImplicitlyEnabledSubtype(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    .line 301
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmSubtypeId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    .line 302
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fgetmIsAsciiCapable(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)Z

    move-result v6

    iput-boolean v6, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    .line 305
    if-eqz v0, :cond_0

    .line 306
    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    goto :goto_0

    .line 308
    :cond_0
    invoke-static/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodSubtype;->hashCodeInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    .line 311
    :goto_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Landroid/view/inputmethod/InputMethodSubtype-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;)V

    return-void
.end method

.method private static greylist-max-o getBuilder(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZ)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    .locals 1
    .param p0, "nameId"    # I
    .param p1, "iconId"    # I
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "extraValue"    # Ljava/lang/String;
    .param p5, "isAuxiliary"    # Z
    .param p6, "overridesImplicitlyEnabledSubtype"    # Z
    .param p7, "id"    # I
    .param p8, "isAsciiCapable"    # Z

    .line 223
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    .line 224
    .local v0, "builder":Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;
    invoke-static {v0, p0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmSubtypeNameResId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)V

    .line 225
    invoke-static {v0, p1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmSubtypeIconResId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)V

    .line 226
    invoke-static {v0, p2}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmSubtypeLocale(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)V

    .line 227
    invoke-static {v0, p3}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmSubtypeMode(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)V

    .line 228
    invoke-static {v0, p4}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmSubtypeExtraValue(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Ljava/lang/String;)V

    .line 229
    invoke-static {v0, p5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmIsAuxiliary(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)V

    .line 230
    invoke-static {v0, p6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmOverridesImplicitlyEnabledSubtype(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)V

    .line 231
    invoke-static {v0, p7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmSubtypeId(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;I)V

    .line 232
    invoke-static {v0, p8}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->-$$Nest$fputmIsAsciiCapable(Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;Z)V

    .line 233
    return-object v0
.end method

.method private greylist-max-o getExtraValueHashMap()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 536
    monitor-enter p0

    .line 537
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    .line 538
    .local v0, "extraValueMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 539
    monitor-exit p0

    return-object v0

    .line 541
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 542
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, "pairs":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 544
    aget-object v3, v1, v2

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 545
    .local v3, "pair":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    .line 546
    aget-object v4, v3, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 547
    :cond_1
    array-length v4, v3

    if-le v4, v6, :cond_3

    .line 548
    array-length v4, v3

    const/4 v7, 0x2

    if-le v4, v7, :cond_2

    .line 549
    sget-object v4, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    const-string v7, "ExtraValue has two or more \'=\'s"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_2
    aget-object v4, v3, v5

    aget-object v5, v3, v6

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    .end local v3    # "pair":[Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 554
    .end local v2    # "i":I
    :cond_4
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    .line 555
    monitor-exit p0

    return-object v0

    .line 556
    .end local v0    # "extraValueMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "pairs":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static greylist-max-o getLocaleDisplayName(Ljava/util/Locale;Ljava/util/Locale;Landroid/icu/text/DisplayContext;)Ljava/lang/String;
    .locals 3
    .param p0, "displayLocale"    # Ljava/util/Locale;
    .param p1, "localeToDisplay"    # Ljava/util/Locale;
    .param p2, "displayContext"    # Landroid/icu/text/DisplayContext;

    .line 525
    if-nez p1, :cond_0

    .line 526
    const-string v0, ""

    return-object v0

    .line 529
    :cond_0
    if-eqz p0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 530
    .local v0, "nonNullDisplayLocale":Ljava/util/Locale;
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/icu/text/DisplayContext;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 531
    invoke-static {v0, v1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Ljava/util/Locale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v1

    .line 532
    invoke-virtual {v1, p1}, Landroid/icu/text/LocaleDisplayNames;->localeDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 530
    return-object v1
.end method

.method private static greylist-max-o getLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 501
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 502
    return-object v0

    .line 504
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    .line 505
    return-object v0

    .line 507
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 508
    .local v1, "configuration":Landroid/content/res/Configuration;
    if-nez v1, :cond_2

    .line 509
    return-object v0

    .line 511
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o hashCodeInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)I
    .locals 8
    .param p0, "locale"    # Ljava/lang/String;
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "extraValue"    # Ljava/lang/String;
    .param p3, "isAuxiliary"    # Z
    .param p4, "overridesImplicitlyEnabledSubtype"    # Z
    .param p5, "isAsciiCapable"    # Z

    .line 658
    xor-int/lit8 v0, p5, 0x1

    .line 659
    .local v0, "needsToCalculateCompatibleHashCode":Z
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 660
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v5

    aput-object p1, v1, v6

    aput-object p2, v1, v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    .line 661
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 660
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 663
    :cond_0
    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v5

    aput-object p1, v7, v6

    aput-object p2, v7, v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v7, v3

    .line 664
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v1

    .line 663
    invoke-static {v7}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public static greylist-max-o sort(Landroid/content/Context;ILandroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # I
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 678
    .local p3, "subtypeList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-nez p2, :cond_0

    return-object p3

    .line 679
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 681
    .local v0, "inputSubtypesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/inputmethod/InputMethodSubtype;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .local v1, "sortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    .line 683
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 684
    invoke-virtual {p2, v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    .line 685
    .local v4, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 686
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 683
    .end local v4    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 692
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    .line 693
    .restart local v4    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    .end local v4    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_1

    .line 695
    :cond_3
    return-object v1
.end method


# virtual methods
.method public whitelist containsExtraValueKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 566
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 602
    instance-of v0, p1, Landroid/view/inputmethod/InputMethodSubtype;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 603
    move-object v0, p1

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    .line 604
    .local v0, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget v2, v0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    if-eqz v2, :cond_0

    goto :goto_1

    .line 607
    :cond_0
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 608
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 609
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 610
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 611
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 612
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v4

    if-ne v2, v4, :cond_1

    .line 613
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v2

    .line 614
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v4

    if-ne v2, v4, :cond_1

    .line 615
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v4

    if-ne v2, v4, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    nop

    .line 607
    :goto_0
    return v1

    .line 605
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v4

    if-ne v2, v4, :cond_3

    move v1, v3

    :cond_3
    return v1

    .line 617
    .end local v0    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    return v1
.end method

.method public whitelist getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 461
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    if-nez v0, :cond_0

    .line 462
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    invoke-static {v0, v1, v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleDisplayName(Ljava/util/Locale;Ljava/util/Locale;Landroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 466
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    invoke-virtual {v0, p2, v1, p3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 468
    .local v0, "subtypeName":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 469
    return-object v2

    .line 471
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "subtypeNameString":Ljava/lang/String;
    const-string v3, "UntranslatableReplacementStringInSubtypeName"

    invoke-virtual {p0, v3}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 474
    invoke-virtual {p0, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "replacementString":Ljava/lang/String;
    goto :goto_1

    .line 478
    .end local v3    # "replacementString":Ljava/lang/String;
    :cond_2
    const-string v3, "%s"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 479
    sget-object v3, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    .local v3, "displayContext":Landroid/icu/text/DisplayContext;
    goto :goto_0

    .line 480
    .end local v3    # "displayContext":Landroid/icu/text/DisplayContext;
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 481
    sget-object v3, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    .restart local v3    # "displayContext":Landroid/icu/text/DisplayContext;
    goto :goto_0

    .line 483
    .end local v3    # "displayContext":Landroid/icu/text/DisplayContext;
    :cond_4
    sget-object v3, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    .line 485
    .restart local v3    # "displayContext":Landroid/icu/text/DisplayContext;
    :goto_0
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v4

    .line 486
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v5

    .line 485
    invoke-static {v4, v5, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleDisplayName(Ljava/util/Locale;Ljava/util/Locale;Landroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 488
    .local v3, "replacementString":Ljava/lang/String;
    :goto_1
    if-nez v3, :cond_5

    .line 489
    const-string v3, ""

    .line 492
    :cond_5
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 493
    :catch_0
    move-exception v4

    .line 494
    .local v4, "e":Ljava/util/IllegalFormatException;
    sget-object v5, Landroid/view/inputmethod/InputMethodSubtype;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found illegal format in subtype name("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return-object v2
.end method

.method public whitelist getExtraValue()Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 576
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIconResId()I
    .locals 1

    .line 343
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    return v0
.end method

.method public whitelist getLanguageTag()Ljava/lang/String;
    .locals 1

    .line 366
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLocale()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 355
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getLocaleObject()Ljava/util/Locale;
    .locals 2

    .line 378
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    return-object v0

    .line 381
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    if-eqz v1, :cond_1

    .line 383
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    monitor-exit v0

    return-object v1

    .line 385
    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 386
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    goto :goto_0

    .line 388
    :cond_2
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/inputmethod/SubtypeLocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    .line 390
    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtype;->mCachedLocaleObj:Ljava/util/Locale;

    monitor-exit v0

    return-object v1

    .line 391
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getMode()Ljava/lang/String;
    .locals 1

    .line 398
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNameResId()I
    .locals 1

    .line 336
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    return v0
.end method

.method public final greylist-max-o getSubtypeId()I
    .locals 1

    .line 597
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    return v0
.end method

.method public final greylist-max-o hasSubtypeId()Z
    .locals 1

    .line 589
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 581
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    return v0
.end method

.method public whitelist isAsciiCapable()Z
    .locals 1

    .line 438
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    return v0
.end method

.method public whitelist isAuxiliary()Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    return v0
.end method

.method public whitelist overridesImplicitlyEnabledSubtype()Z
    .locals 1

    .line 429
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 627
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeNameResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeIconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 633
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAuxiliary:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mOverridesImplicitlyEnabledSubtype:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mSubtypeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodSubtype;->mIsAsciiCapable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    return-void
.end method
