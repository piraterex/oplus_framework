.class public final Landroid/app/SearchableInfo;
.super Ljava/lang/Object;
.source "SearchableInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SearchableInfo$ActionKeyInfo;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "SearchableInfo"

.field private static final greylist-max-o MD_LABEL_SEARCHABLE:Ljava/lang/String; = "android.app.searchable"

.field private static final greylist-max-o MD_XML_ELEMENT_SEARCHABLE:Ljava/lang/String; = "searchable"

.field private static final greylist-max-o MD_XML_ELEMENT_SEARCHABLE_ACTION_KEY:Ljava/lang/String; = "actionkey"

.field private static final greylist-max-o SEARCH_MODE_BADGE_ICON:I = 0x8

.field private static final greylist-max-o SEARCH_MODE_BADGE_LABEL:I = 0x4

.field private static final greylist-max-o SEARCH_MODE_QUERY_REWRITE_FROM_DATA:I = 0x10

.field private static final greylist-max-o SEARCH_MODE_QUERY_REWRITE_FROM_TEXT:I = 0x20

.field private static final greylist-max-o VOICE_SEARCH_LAUNCH_RECOGNIZER:I = 0x4

.field private static final greylist-max-o VOICE_SEARCH_LAUNCH_WEB_SEARCH:I = 0x2

.field private static final greylist-max-o VOICE_SEARCH_SHOW_BUTTON:I = 0x1


# instance fields
.field private greylist-max-o mActionKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/app/SearchableInfo$ActionKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mAutoUrlDetect:Z

.field private final greylist-max-o mHintId:I

.field private final greylist-max-o mIconId:I

.field private final greylist-max-o mIncludeInGlobalSearch:Z

.field private final greylist-max-o mLabelId:I

.field private final greylist-max-o mQueryAfterZeroResults:Z

.field private final greylist-max-o mSearchActivity:Landroid/content/ComponentName;

.field private final greylist-max-o mSearchButtonText:I

.field private final greylist-max-o mSearchImeOptions:I

.field private final greylist-max-o mSearchInputType:I

.field private final greylist-max-o mSearchMode:I

.field private final greylist-max-o mSettingsDescriptionId:I

.field private final greylist-max-o mSuggestAuthority:Ljava/lang/String;

.field private final greylist-max-o mSuggestIntentAction:Ljava/lang/String;

.field private final greylist-max-o mSuggestIntentData:Ljava/lang/String;

.field private final greylist-max-o mSuggestPath:Ljava/lang/String;

.field private final greylist-max-o mSuggestProviderPackage:Ljava/lang/String;

.field private final greylist-max-o mSuggestSelection:Ljava/lang/String;

.field private final greylist-max-o mSuggestThreshold:I

.field private final greylist-max-o mVoiceLanguageId:I

.field private final greylist-max-o mVoiceLanguageModeId:I

.field private final greylist-max-o mVoiceMaxResults:I

.field private final greylist-max-o mVoicePromptTextId:I

.field private final greylist-max-o mVoiceSearchMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 803
    new-instance v0, Landroid/app/SearchableInfo$1;

    invoke-direct {v0}, Landroid/app/SearchableInfo$1;-><init>()V

    sput-object v0, Landroid/app/SearchableInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "cName"    # Landroid/content/ComponentName;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    .line 315
    iput-object p3, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    .line 317
    sget-object v0, Lcom/android/internal/R$styleable;->Searchable:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 319
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    .line 320
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mLabelId:I

    .line 321
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mHintId:I

    .line 322
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/app/SearchableInfo;->mIconId:I

    .line 323
    const/16 v5, 0x9

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/app/SearchableInfo;->mSearchButtonText:I

    .line 325
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mSearchInputType:I

    .line 328
    const/16 v4, 0x10

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/app/SearchableInfo;->mSearchImeOptions:I

    .line 330
    const/16 v3, 0x12

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/SearchableInfo;->mIncludeInGlobalSearch:Z

    .line 332
    const/16 v3, 0x13

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/SearchableInfo;->mQueryAfterZeroResults:Z

    .line 334
    const/16 v3, 0x15

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/SearchableInfo;->mAutoUrlDetect:Z

    .line 337
    const/16 v3, 0x14

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/app/SearchableInfo;->mSettingsDescriptionId:I

    .line 339
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    .line 341
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/app/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    .line 343
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/app/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    .line 345
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/app/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    .line 347
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/app/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    .line 349
    const/16 v4, 0x11

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mSuggestThreshold:I

    .line 352
    nop

    .line 353
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    .line 355
    nop

    .line 356
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mVoiceLanguageModeId:I

    .line 357
    nop

    .line 358
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mVoicePromptTextId:I

    .line 359
    nop

    .line 360
    const/16 v4, 0xe

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mVoiceLanguageId:I

    .line 361
    nop

    .line 362
    const/16 v4, 0xf

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/app/SearchableInfo;->mVoiceMaxResults:I

    .line 364
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 367
    const/4 v2, 0x0

    .line 368
    .local v2, "suggestProviderPackage":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 369
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 370
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    .line 372
    .local v3, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v3, :cond_0

    .line 373
    iget-object v2, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 376
    .end local v3    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    iput-object v2, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    .line 379
    if-eqz v1, :cond_1

    .line 382
    return-void

    .line 380
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Search label must be a resource reference."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    .line 822
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mLabelId:I

    .line 823
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    .line 824
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mHintId:I

    .line 825
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    .line 826
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mIconId:I

    .line 827
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSearchButtonText:I

    .line 828
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSearchInputType:I

    .line 829
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSearchImeOptions:I

    .line 830
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroid/app/SearchableInfo;->mIncludeInGlobalSearch:Z

    .line 831
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Landroid/app/SearchableInfo;->mQueryAfterZeroResults:Z

    .line 832
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Landroid/app/SearchableInfo;->mAutoUrlDetect:Z

    .line 834
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSettingsDescriptionId:I

    .line 835
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    .line 836
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    .line 837
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    .line 838
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    .line 839
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    .line 840
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSuggestThreshold:I

    .line 842
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "count":I
    :goto_3
    if-lez v1, :cond_3

    .line 843
    new-instance v2, Landroid/app/SearchableInfo$ActionKeyInfo;

    invoke-direct {v2, p1, v0}, Landroid/app/SearchableInfo$ActionKeyInfo;-><init>(Landroid/os/Parcel;Landroid/app/SearchableInfo$ActionKeyInfo-IA;)V

    invoke-direct {p0, v2}, Landroid/app/SearchableInfo;->addActionKey(Landroid/app/SearchableInfo$ActionKeyInfo;)V

    .line 842
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 846
    .end local v1    # "count":I
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    .line 848
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    .line 849
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/SearchableInfo;->mVoiceLanguageModeId:I

    .line 850
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/SearchableInfo;->mVoicePromptTextId:I

    .line 851
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/SearchableInfo;->mVoiceLanguageId:I

    .line 852
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/SearchableInfo;->mVoiceMaxResults:I

    .line 853
    return-void
.end method

.method private greylist-max-o addActionKey(Landroid/app/SearchableInfo$ActionKeyInfo;)V
    .locals 2
    .param p1, "keyInfo"    # Landroid/app/SearchableInfo$ActionKeyInfo;

    .line 509
    iget-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 510
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    .line 512
    :cond_0
    iget-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    return-void
.end method

.method private static greylist-max-o createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 262
    const-string v0, "SearchableInfo"

    const/4 v1, 0x0

    .line 264
    .local v1, "theirContext":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 269
    :goto_0
    goto :goto_1

    .line 267
    :catch_0
    move-exception v2

    .line 268
    .local v2, "e":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t make context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 265
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 266
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 271
    :goto_1
    return-object v1
.end method

.method public static greylist-max-o getActivityMetaData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;I)Landroid/app/SearchableInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I

    .line 527
    const/4 v0, 0x0

    .line 529
    .local v0, "userContext":Landroid/content/Context;
    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "system"

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 534
    nop

    .line 536
    nop

    .line 537
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.app.searchable"

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 538
    .local v2, "xml":Landroid/content/res/XmlResourceParser;
    if-nez v2, :cond_0

    .line 539
    return-object v1

    .line 541
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .local v1, "cName":Landroid/content/ComponentName;
    invoke-static {v0, v2, v1}, Landroid/app/SearchableInfo;->getActivityMetaData(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v3

    .line 544
    .local v3, "searchable":Landroid/app/SearchableInfo;
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 560
    return-object v3

    .line 531
    .end local v1    # "cName":Landroid/content/ComponentName;
    .end local v2    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v3    # "searchable":Landroid/app/SearchableInfo;
    :catch_0
    move-exception v2

    .line 532
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t create package context for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SearchableInfo"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-object v1
.end method

.method private static greylist-max-o getActivityMetaData(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "cName"    # Landroid/content/ComponentName;

    .line 574
    const-string v0, "Reading searchable metadata for "

    const-string v1, "SearchableInfo"

    const/4 v2, 0x0

    .line 575
    .local v2, "result":Landroid/app/SearchableInfo;
    invoke-static {p0, p2}, Landroid/app/SearchableInfo;->createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;

    move-result-object v3

    .line 576
    .local v3, "activityContext":Landroid/content/Context;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 581
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 582
    .local v5, "tagType":I
    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    .line 583
    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 584
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "searchable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v7, ": "

    if-eqz v6, :cond_2

    .line 585
    :try_start_1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 586
    .local v6, "attr":Landroid/util/AttributeSet;
    if-eqz v6, :cond_1

    .line 588
    :try_start_2
    new-instance v8, Landroid/app/SearchableInfo;

    invoke-direct {v8, v3, v6, p2}, Landroid/app/SearchableInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v8

    .line 593
    goto :goto_1

    .line 589
    :catch_0
    move-exception v8

    .line 590
    .local v8, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid searchable metadata for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 591
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 590
    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-object v4

    .line 595
    .end local v6    # "attr":Landroid/util/AttributeSet;
    .end local v8    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_1
    goto :goto_2

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "actionkey"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 596
    if-nez v2, :cond_3

    .line 598
    return-object v4

    .line 600
    :cond_3
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 601
    .restart local v6    # "attr":Landroid/util/AttributeSet;
    if-eqz v6, :cond_4

    .line 603
    :try_start_4
    new-instance v8, Landroid/app/SearchableInfo$ActionKeyInfo;

    invoke-direct {v8, v3, v6}, Landroid/app/SearchableInfo$ActionKeyInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {v2, v8}, Landroid/app/SearchableInfo;->addActionKey(Landroid/app/SearchableInfo$ActionKeyInfo;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 608
    goto :goto_2

    .line 604
    :catch_1
    move-exception v8

    .line 605
    .restart local v8    # "ex":Ljava/lang/IllegalArgumentException;
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid action key for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 606
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 605
    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-object v4

    .line 612
    .end local v6    # "attr":Landroid/util/AttributeSet;
    .end local v8    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_4
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move v5, v6

    goto/16 :goto_0

    .line 620
    .end local v5    # "tagType":I
    :cond_5
    nop

    .line 622
    return-object v2

    .line 617
    :catch_2
    move-exception v5

    .line 618
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 619
    return-object v4

    .line 614
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 615
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    return-object v4
.end method


# virtual methods
.method public whitelist autoUrlDetect()Z
    .locals 1

    .line 797
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mAutoUrlDetect:Z

    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 856
    const/4 v0, 0x0

    return v0
.end method

.method public greylist findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;
    .locals 2
    .param p1, "keyCode"    # I

    .line 502
    iget-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 503
    const/4 v0, 0x0

    return-object v0

    .line 505
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchableInfo$ActionKeyInfo;

    return-object v0
.end method

.method public greylist getActivityContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 255
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    invoke-static {p1, v0}, Landroid/app/SearchableInfo;->createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHintId()I
    .locals 1

    .line 647
    iget v0, p0, Landroid/app/SearchableInfo;->mHintId:I

    return v0
.end method

.method public greylist getIconId()I
    .locals 1

    .line 661
    iget v0, p0, Landroid/app/SearchableInfo;->mIconId:I

    return v0
.end method

.method public whitelist getImeOptions()I
    .locals 1

    .line 767
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchImeOptions:I

    return v0
.end method

.method public whitelist getInputType()I
    .locals 1

    .line 755
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchInputType:I

    return v0
.end method

.method public greylist getLabelId()I
    .locals 1

    .line 636
    iget v0, p0, Landroid/app/SearchableInfo;->mLabelId:I

    return v0
.end method

.method public greylist getProviderContext(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityContext"    # Landroid/content/Context;

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "theirContext":Landroid/content/Context;
    iget-object v1, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    return-object p2

    .line 289
    :cond_0
    iget-object v1, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 291
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 296
    :goto_0
    goto :goto_1

    .line 294
    :catch_0
    move-exception v1

    goto :goto_1

    .line 292
    :catch_1
    move-exception v1

    goto :goto_0

    .line 298
    :cond_1
    :goto_1
    return-object v0
.end method

.method public whitelist getSearchActivity()Landroid/content/ComponentName;
    .locals 1

    .line 132
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public greylist-max-o getSearchButtonText()I
    .locals 1

    .line 743
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchButtonText:I

    return v0
.end method

.method public whitelist getSettingsDescriptionId()I
    .locals 1

    .line 182
    iget v0, p0, Landroid/app/SearchableInfo;->mSettingsDescriptionId:I

    return v0
.end method

.method public whitelist getSuggestAuthority()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSuggestIntentAction()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSuggestIntentData()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSuggestPackage()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSuggestPath()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSuggestSelection()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSuggestThreshold()I
    .locals 1

    .line 243
    iget v0, p0, Landroid/app/SearchableInfo;->mSuggestThreshold:I

    return v0
.end method

.method public whitelist getVoiceLanguageId()I
    .locals 1

    .line 721
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceLanguageId:I

    return v0
.end method

.method public whitelist getVoiceLanguageModeId()I
    .locals 1

    .line 699
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceLanguageModeId:I

    return v0
.end method

.method public whitelist getVoiceMaxResults()I
    .locals 1

    .line 732
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceMaxResults:I

    return v0
.end method

.method public whitelist getVoicePromptTextId()I
    .locals 1

    .line 710
    iget v0, p0, Landroid/app/SearchableInfo;->mVoicePromptTextId:I

    return v0
.end method

.method public whitelist getVoiceSearchEnabled()Z
    .locals 2

    .line 670
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist getVoiceSearchLaunchRecognizer()Z
    .locals 1

    .line 688
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getVoiceSearchLaunchWebSearch()Z
    .locals 1

    .line 679
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist queryAfterZeroResults()Z
    .locals 1

    .line 788
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mQueryAfterZeroResults:Z

    return v0
.end method

.method public whitelist shouldIncludeInGlobalSearch()Z
    .locals 1

    .line 778
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mIncludeInGlobalSearch:Z

    return v0
.end method

.method public whitelist shouldRewriteQueryFromData()Z
    .locals 1

    .line 163
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist shouldRewriteQueryFromText()Z
    .locals 1

    .line 172
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o useBadgeIcon()Z
    .locals 1

    .line 154
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/SearchableInfo;->mIconId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o useBadgeLabel()Z
    .locals 1

    .line 143
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 860
    iget v0, p0, Landroid/app/SearchableInfo;->mLabelId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 862
    iget v0, p0, Landroid/app/SearchableInfo;->mHintId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    iget v0, p0, Landroid/app/SearchableInfo;->mIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchButtonText:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 866
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchInputType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchImeOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mIncludeInGlobalSearch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mQueryAfterZeroResults:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mAutoUrlDetect:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 872
    iget v0, p0, Landroid/app/SearchableInfo;->mSettingsDescriptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 873
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 876
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 878
    iget v0, p0, Landroid/app/SearchableInfo;->mSuggestThreshold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 880
    iget-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 881
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 883
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 884
    iget-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchableInfo$ActionKeyInfo;

    .line 885
    .local v1, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    invoke-virtual {v1, p1, p2}, Landroid/app/SearchableInfo$ActionKeyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 886
    .end local v1    # "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    goto :goto_0

    .line 889
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 891
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceLanguageModeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 893
    iget v0, p0, Landroid/app/SearchableInfo;->mVoicePromptTextId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 894
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceLanguageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 895
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceMaxResults:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    return-void
.end method
