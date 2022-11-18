.class public final Landroid/view/inputmethod/InputMethodInfo;
.super Ljava/lang/Object;
.source "InputMethodInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o TAG:Ljava/lang/String; = "InputMethodInfo"


# instance fields
.field private final greylist-max-o mForceDefault:Z

.field private final blacklist mHandledConfigChanges:I

.field final greylist-max-o mId:Ljava/lang/String;

.field private final blacklist mInlineSuggestionsEnabled:Z

.field private final greylist-max-o mIsAuxIme:Z

.field final greylist-max-o mIsDefaultResId:I

.field final greylist-max-o mIsVrOnly:Z

.field final greylist-max-o mService:Landroid/content/pm/ResolveInfo;

.field final greylist-max-o mSettingsActivityName:Ljava/lang/String;

.field private final blacklist mShowInInputMethodPicker:Z

.field private final greylist mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

.field private final blacklist mSupportsInlineSuggestionsWithTouchExploration:Z

.field private final blacklist mSupportsStylusHandwriting:Z

.field private final greylist-max-o mSupportsSwitchingToNextInputMethod:Z

.field private final blacklist mSuppressesSpellChecker:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 730
    new-instance v0, Landroid/view/inputmethod/InputMethodInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    .line 178
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V
    .locals 29
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    .local p3, "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object v2, v1, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 193
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 194
    .local v4, "si":Landroid/content/pm/ServiceInfo;
    invoke-static/range {p2 .. p2}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    .line 195
    const/4 v5, 0x1

    .line 196
    .local v5, "isAuxIme":Z
    const/4 v6, 0x0

    .line 197
    .local v6, "supportsSwitchingToNextInputMethod":Z
    const/4 v7, 0x0

    .line 198
    .local v7, "inlineSuggestionsEnabled":Z
    const/4 v8, 0x0

    .line 199
    .local v8, "supportsInlineSuggestionsWithTouchExploration":Z
    const/4 v9, 0x0

    .line 200
    .local v9, "suppressesSpellChecker":Z
    const/4 v10, 0x1

    .line 201
    .local v10, "showInInputMethodPicker":Z
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 204
    .local v11, "pm":Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    .line 206
    .local v12, "settingsActivityComponent":Ljava/lang/String;
    const/4 v13, 0x0

    .line 208
    .local v13, "isDefaultResId":I
    const/4 v14, 0x0

    .line 209
    .local v14, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v15, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :try_start_0
    const-string v0, "android.view.im"

    invoke-virtual {v4, v11, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v14, v0

    .line 212
    if-eqz v14, :cond_d

    .line 217
    iget-object v0, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 219
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {v14}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v17

    move-object/from16 v18, v17

    .line 222
    .local v18, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move/from16 v17, v2

    move/from16 v19, v5

    .end local v5    # "isAuxIme":Z
    .local v17, "type":I
    .local v19, "isAuxIme":Z
    const/4 v5, 0x1

    if-eq v2, v5, :cond_0

    move/from16 v2, v17

    const/4 v5, 0x2

    .end local v17    # "type":I
    .local v2, "type":I
    if-eq v2, v5, :cond_1

    move-object/from16 v2, p2

    move/from16 v5, v19

    goto :goto_0

    .end local v2    # "type":I
    .restart local v17    # "type":I
    :cond_0
    move/from16 v2, v17

    .line 226
    .end local v17    # "type":I
    .restart local v2    # "type":I
    :cond_1
    :try_start_1
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, "nodeName":Ljava/lang/String;
    move/from16 v20, v2

    .end local v2    # "type":I
    .local v20, "type":I
    const-string v2, "input-method"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 232
    sget-object v2, Lcom/android/internal/R$styleable;->InputMethod:[I

    move-object/from16 v21, v5

    move-object/from16 v5, v18

    .end local v18    # "attrs":Landroid/util/AttributeSet;
    .local v5, "attrs":Landroid/util/AttributeSet;
    .local v21, "nodeName":Ljava/lang/String;
    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 234
    .local v2, "sa":Landroid/content/res/TypedArray;
    move/from16 v18, v6

    const/4 v6, 0x2

    .end local v6    # "supportsSwitchingToNextInputMethod":Z
    .local v18, "supportsSwitchingToNextInputMethod":Z
    :try_start_2
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v12, v22

    .line 236
    const/4 v6, 0x4

    move/from16 v22, v7

    const/4 v7, 0x0

    .end local v7    # "inlineSuggestionsEnabled":Z
    .local v22, "inlineSuggestionsEnabled":Z
    :try_start_3
    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    move/from16 v23, v16

    .line 237
    .local v23, "isVrOnly":Z
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v13, v16

    .line 239
    const/4 v6, 0x3

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move/from16 v18, v16

    .line 242
    const/4 v6, 0x5

    :try_start_4
    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move/from16 v22, v16

    .line 244
    const/16 v6, 0x9

    :try_start_5
    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    move/from16 v8, v16

    .line 247
    const/4 v6, 0x6

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    move/from16 v9, v16

    .line 249
    const/4 v6, 0x7

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    move/from16 v10, v24

    .line 251
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v1, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 253
    const/16 v6, 0x8

    move-object/from16 v25, v11

    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v25, "pm":Landroid/content/pm/PackageManager;
    :try_start_6
    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    .line 255
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 257
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 259
    .local v7, "depth":I
    :goto_1
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move/from16 v26, v11

    const/4 v6, 0x3

    .end local v20    # "type":I
    .local v26, "type":I
    if-ne v11, v6, :cond_2

    :try_start_7
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v7, :cond_7

    :cond_2
    move/from16 v6, v26

    const/4 v11, 0x1

    .end local v26    # "type":I
    .local v6, "type":I
    if-eq v6, v11, :cond_6

    .line 261
    const/4 v11, 0x2

    if-ne v6, v11, :cond_5

    .line 262
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 263
    .end local v21    # "nodeName":Ljava/lang/String;
    .local v11, "nodeName":Ljava/lang/String;
    move-object/from16 v26, v2

    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .local v26, "sa":Landroid/content/res/TypedArray;
    const-string v2, "subtype"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 267
    sget-object v2, Lcom/android/internal/R$styleable;->InputMethod_Subtype:[I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 269
    .local v2, "a":Landroid/content/res/TypedArray;
    move-object/from16 v27, v0

    .end local v0    # "res":Landroid/content/res/Resources;
    .local v27, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    .line 270
    move-object/from16 v28, v5

    move/from16 v20, v6

    const/4 v5, 0x0

    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "type":I
    .restart local v20    # "type":I
    .local v28, "attrs":Landroid/util/AttributeSet;
    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    .line 272
    move/from16 v17, v7

    const/4 v6, 0x1

    .end local v7    # "depth":I
    .local v17, "depth":I
    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    .line 274
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setLanguageTag(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    .line 276
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    .line 278
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    .line 280
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    .line 282
    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    .line 284
    const/4 v7, 0x6

    invoke-virtual {v2, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setOverridesImplicitlyEnabledSubtype(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    .line 287
    const/4 v5, 0x7

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    .line 289
    const/16 v7, 0x8

    invoke-virtual {v2, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAsciiCapable(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->build()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 291
    .local v0, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 292
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v5

    if-nez v5, :cond_3

    .line 293
    const/4 v5, 0x0

    move/from16 v19, v5

    .line 295
    :cond_3
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    move v6, v7

    move-object/from16 v21, v11

    move/from16 v7, v17

    move-object/from16 v2, v26

    move-object/from16 v0, v27

    move-object/from16 v5, v28

    .end local v0    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v2    # "a":Landroid/content/res/TypedArray;
    goto/16 :goto_1

    .line 264
    .end local v17    # "depth":I
    .end local v20    # "type":I
    .end local v27    # "res":Landroid/content/res/Resources;
    .end local v28    # "attrs":Landroid/util/AttributeSet;
    .local v0, "res":Landroid/content/res/Resources;
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v6    # "type":I
    .restart local v7    # "depth":I
    :cond_4
    move-object/from16 v27, v0

    move-object/from16 v28, v5

    move/from16 v20, v6

    move/from16 v17, v7

    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "type":I
    .end local v7    # "depth":I
    .restart local v17    # "depth":I
    .restart local v20    # "type":I
    .restart local v27    # "res":Landroid/content/res/Resources;
    .restart local v28    # "attrs":Landroid/util/AttributeSet;
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Meta-data in input-method does not start with subtype tag"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    .end local v8    # "supportsInlineSuggestionsWithTouchExploration":Z
    .end local v9    # "suppressesSpellChecker":Z
    .end local v10    # "showInInputMethodPicker":Z
    .end local v12    # "settingsActivityComponent":Ljava/lang/String;
    .end local v13    # "isDefaultResId":I
    .end local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v15    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v18    # "supportsSwitchingToNextInputMethod":Z
    .end local v19    # "isAuxIme":Z
    .end local v22    # "inlineSuggestionsEnabled":Z
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Landroid/view/inputmethod/InputMethodInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "service":Landroid/content/pm/ResolveInfo;
    .end local p3    # "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    throw v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 261
    .end local v11    # "nodeName":Ljava/lang/String;
    .end local v17    # "depth":I
    .end local v20    # "type":I
    .end local v26    # "sa":Landroid/content/res/TypedArray;
    .end local v27    # "res":Landroid/content/res/Resources;
    .end local v28    # "attrs":Landroid/util/AttributeSet;
    .restart local v0    # "res":Landroid/content/res/Resources;
    .local v2, "sa":Landroid/content/res/TypedArray;
    .restart local v4    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v6    # "type":I
    .restart local v7    # "depth":I
    .restart local v8    # "supportsInlineSuggestionsWithTouchExploration":Z
    .restart local v9    # "suppressesSpellChecker":Z
    .restart local v10    # "showInInputMethodPicker":Z
    .restart local v12    # "settingsActivityComponent":Ljava/lang/String;
    .restart local v13    # "isDefaultResId":I
    .restart local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v15    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v18    # "supportsSwitchingToNextInputMethod":Z
    .restart local v19    # "isAuxIme":Z
    .restart local v21    # "nodeName":Ljava/lang/String;
    .restart local v22    # "inlineSuggestionsEnabled":Z
    .restart local v25    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "service":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_5
    move-object/from16 v27, v0

    move-object/from16 v26, v2

    move-object/from16 v28, v5

    move/from16 v20, v6

    move/from16 v17, v7

    const/4 v6, 0x0

    const/16 v7, 0x8

    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "type":I
    .end local v7    # "depth":I
    .restart local v17    # "depth":I
    .restart local v20    # "type":I
    .restart local v26    # "sa":Landroid/content/res/TypedArray;
    .restart local v27    # "res":Landroid/content/res/Resources;
    .restart local v28    # "attrs":Landroid/util/AttributeSet;
    move v6, v7

    move/from16 v7, v17

    goto/16 :goto_1

    .line 259
    .end local v17    # "depth":I
    .end local v20    # "type":I
    .end local v26    # "sa":Landroid/content/res/TypedArray;
    .end local v27    # "res":Landroid/content/res/Resources;
    .end local v28    # "attrs":Landroid/util/AttributeSet;
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v2    # "sa":Landroid/content/res/TypedArray;
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v6    # "type":I
    .restart local v7    # "depth":I
    :cond_6
    move-object/from16 v27, v0

    move-object/from16 v26, v2

    move-object/from16 v28, v5

    move/from16 v20, v6

    move/from16 v17, v7

    .line 302
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "type":I
    .end local v7    # "depth":I
    .end local v21    # "nodeName":Ljava/lang/String;
    :cond_7
    if-eqz v14, :cond_8

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    .line 305
    :cond_8
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 306
    const/16 v19, 0x0

    move/from16 v0, v19

    goto :goto_2

    .line 305
    :cond_9
    move/from16 v0, v19

    .line 309
    .end local v19    # "isAuxIme":Z
    .local v0, "isAuxIme":Z
    :goto_2
    if-eqz v3, :cond_b

    .line 310
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    .line 311
    .local v2, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v2, :cond_b

    .line 312
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 313
    .local v6, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 314
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 316
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Duplicated subtype definition found: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 317
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 316
    const-string v11, "InputMethodInfo"

    invoke-static {v11, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 321
    .end local v2    # "N":I
    .end local v5    # "i":I
    :cond_b
    new-instance v2, Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-direct {v2, v15}, Landroid/view/inputmethod/InputMethodSubtypeArray;-><init>(Ljava/util/List;)V

    iput-object v2, v1, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    .line 322
    iput-object v12, v1, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 323
    iput v13, v1, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    .line 324
    iput-boolean v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    .line 325
    move/from16 v2, v18

    .end local v18    # "supportsSwitchingToNextInputMethod":Z
    .local v2, "supportsSwitchingToNextInputMethod":Z
    iput-boolean v2, v1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    .line 326
    move/from16 v5, v22

    .end local v22    # "inlineSuggestionsEnabled":Z
    .local v5, "inlineSuggestionsEnabled":Z
    iput-boolean v5, v1, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    .line 327
    iput-boolean v8, v1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    .line 329
    iput-boolean v9, v1, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    .line 330
    iput-boolean v10, v1, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    .line 331
    move/from16 v6, v23

    .end local v23    # "isVrOnly":Z
    .local v6, "isVrOnly":Z
    iput-boolean v6, v1, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    .line 332
    return-void

    .line 302
    .end local v0    # "isAuxIme":Z
    .end local v2    # "supportsSwitchingToNextInputMethod":Z
    .end local v5    # "inlineSuggestionsEnabled":Z
    .end local v6    # "isVrOnly":Z
    .restart local v18    # "supportsSwitchingToNextInputMethod":Z
    .restart local v19    # "isAuxIme":Z
    .restart local v22    # "inlineSuggestionsEnabled":Z
    :catchall_0
    move-exception v0

    move/from16 v2, v18

    move/from16 v5, v22

    move v6, v2

    move v7, v5

    move/from16 v5, v19

    .end local v18    # "supportsSwitchingToNextInputMethod":Z
    .end local v22    # "inlineSuggestionsEnabled":Z
    .restart local v2    # "supportsSwitchingToNextInputMethod":Z
    .restart local v5    # "inlineSuggestionsEnabled":Z
    goto/16 :goto_6

    .line 298
    .end local v2    # "supportsSwitchingToNextInputMethod":Z
    .end local v5    # "inlineSuggestionsEnabled":Z
    .restart local v18    # "supportsSwitchingToNextInputMethod":Z
    .restart local v22    # "inlineSuggestionsEnabled":Z
    :catch_0
    move-exception v0

    move/from16 v2, v18

    move/from16 v5, v22

    move v6, v2

    move v7, v5

    move/from16 v5, v19

    .end local v18    # "supportsSwitchingToNextInputMethod":Z
    .end local v22    # "inlineSuggestionsEnabled":Z
    .restart local v2    # "supportsSwitchingToNextInputMethod":Z
    .restart local v5    # "inlineSuggestionsEnabled":Z
    goto/16 :goto_5

    .line 302
    .end local v2    # "supportsSwitchingToNextInputMethod":Z
    .end local v5    # "inlineSuggestionsEnabled":Z
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    .local v11, "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "supportsSwitchingToNextInputMethod":Z
    .restart local v22    # "inlineSuggestionsEnabled":Z
    :catchall_1
    move-exception v0

    move-object/from16 v25, v11

    move/from16 v2, v18

    move/from16 v5, v22

    move v6, v2

    move v7, v5

    move/from16 v5, v19

    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "supportsSwitchingToNextInputMethod":Z
    .end local v22    # "inlineSuggestionsEnabled":Z
    .restart local v2    # "supportsSwitchingToNextInputMethod":Z
    .restart local v5    # "inlineSuggestionsEnabled":Z
    .restart local v25    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_6

    .line 298
    .end local v2    # "supportsSwitchingToNextInputMethod":Z
    .end local v5    # "inlineSuggestionsEnabled":Z
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "supportsSwitchingToNextInputMethod":Z
    .restart local v22    # "inlineSuggestionsEnabled":Z
    :catch_1
    move-exception v0

    move-object/from16 v25, v11

    move/from16 v2, v18

    move/from16 v5, v22

    move v6, v2

    move v7, v5

    move/from16 v5, v19

    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "supportsSwitchingToNextInputMethod":Z
    .end local v22    # "inlineSuggestionsEnabled":Z
    .restart local v2    # "supportsSwitchingToNextInputMethod":Z
    .restart local v5    # "inlineSuggestionsEnabled":Z
    .restart local v25    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_5

    .line 302
    .end local v2    # "supportsSwitchingToNextInputMethod":Z
    .end local v5    # "inlineSuggestionsEnabled":Z
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "supportsSwitchingToNextInputMethod":Z
    .restart local v22    # "inlineSuggestionsEnabled":Z
    :catchall_2
    move-exception v0

    move-object/from16 v25, v11

    move/from16 v2, v18

    move v6, v2

    move/from16 v5, v19

    move/from16 v7, v22

    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "supportsSwitchingToNextInputMethod":Z
    .restart local v2    # "supportsSwitchingToNextInputMethod":Z
    .restart local v25    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_6

    .line 298
    .end local v2    # "supportsSwitchingToNextInputMethod":Z
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "supportsSwitchingToNextInputMethod":Z
    :catch_2
    move-exception v0

    move-object/from16 v25, v11

    move/from16 v2, v18

    move v6, v2

    move/from16 v5, v19

    move/from16 v7, v22

    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "supportsSwitchingToNextInputMethod":Z
    .restart local v2    # "supportsSwitchingToNextInputMethod":Z
    .restart local v25    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_5

    .line 302
    .end local v2    # "supportsSwitchingToNextInputMethod":Z
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "supportsSwitchingToNextInputMethod":Z
    :catchall_3
    move-exception v0

    move-object/from16 v25, v11

    move/from16 v6, v18

    move/from16 v5, v19

    move/from16 v7, v22

    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v25    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_6

    .line 298
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_3
    move-exception v0

    move-object/from16 v25, v11

    move/from16 v6, v18

    move/from16 v5, v19

    move/from16 v7, v22

    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v25    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_5

    .line 302
    .end local v22    # "inlineSuggestionsEnabled":Z
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    .local v7, "inlineSuggestionsEnabled":Z
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catchall_4
    move-exception v0

    move/from16 v22, v7

    move-object/from16 v25, v11

    move/from16 v6, v18

    move/from16 v5, v19

    .end local v7    # "inlineSuggestionsEnabled":Z
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v22    # "inlineSuggestionsEnabled":Z
    .restart local v25    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_6

    .line 298
    .end local v22    # "inlineSuggestionsEnabled":Z
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "inlineSuggestionsEnabled":Z
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_4
    move-exception v0

    move/from16 v22, v7

    move-object/from16 v25, v11

    move/from16 v6, v18

    move/from16 v5, v19

    .end local v7    # "inlineSuggestionsEnabled":Z
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v22    # "inlineSuggestionsEnabled":Z
    .restart local v25    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_5

    .line 228
    .end local v22    # "inlineSuggestionsEnabled":Z
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    .local v0, "res":Landroid/content/res/Resources;
    .local v5, "nodeName":Ljava/lang/String;
    .local v6, "supportsSwitchingToNextInputMethod":Z
    .restart local v7    # "inlineSuggestionsEnabled":Z
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v18, "attrs":Landroid/util/AttributeSet;
    .restart local v20    # "type":I
    :cond_c
    move-object/from16 v27, v0

    move-object/from16 v21, v5

    move/from16 v22, v7

    move-object/from16 v25, v11

    move-object/from16 v28, v18

    move/from16 v18, v6

    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "supportsSwitchingToNextInputMethod":Z
    .end local v7    # "inlineSuggestionsEnabled":Z
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v18, "supportsSwitchingToNextInputMethod":Z
    .restart local v21    # "nodeName":Ljava/lang/String;
    .restart local v22    # "inlineSuggestionsEnabled":Z
    .restart local v25    # "pm":Landroid/content/pm/PackageManager;
    .restart local v27    # "res":Landroid/content/res/Resources;
    .restart local v28    # "attrs":Landroid/util/AttributeSet;
    :try_start_8
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Meta-data does not start with input-method tag"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    .end local v8    # "supportsInlineSuggestionsWithTouchExploration":Z
    .end local v9    # "suppressesSpellChecker":Z
    .end local v10    # "showInInputMethodPicker":Z
    .end local v12    # "settingsActivityComponent":Ljava/lang/String;
    .end local v13    # "isDefaultResId":I
    .end local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v15    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v18    # "supportsSwitchingToNextInputMethod":Z
    .end local v19    # "isAuxIme":Z
    .end local v22    # "inlineSuggestionsEnabled":Z
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Landroid/view/inputmethod/InputMethodInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "service":Landroid/content/pm/ResolveInfo;
    .end local p3    # "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    throw v0

    .line 302
    .end local v20    # "type":I
    .end local v21    # "nodeName":Ljava/lang/String;
    .end local v27    # "res":Landroid/content/res/Resources;
    .end local v28    # "attrs":Landroid/util/AttributeSet;
    .restart local v4    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "supportsSwitchingToNextInputMethod":Z
    .restart local v7    # "inlineSuggestionsEnabled":Z
    .restart local v8    # "supportsInlineSuggestionsWithTouchExploration":Z
    .restart local v9    # "suppressesSpellChecker":Z
    .restart local v10    # "showInInputMethodPicker":Z
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "settingsActivityComponent":Ljava/lang/String;
    .restart local v13    # "isDefaultResId":I
    .restart local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v15    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v19    # "isAuxIme":Z
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "service":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_5
    move-exception v0

    move/from16 v18, v6

    move/from16 v22, v7

    move-object/from16 v25, v11

    move/from16 v5, v19

    .end local v6    # "supportsSwitchingToNextInputMethod":Z
    .end local v7    # "inlineSuggestionsEnabled":Z
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "supportsSwitchingToNextInputMethod":Z
    .restart local v22    # "inlineSuggestionsEnabled":Z
    .restart local v25    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_6

    .line 298
    .end local v18    # "supportsSwitchingToNextInputMethod":Z
    .end local v22    # "inlineSuggestionsEnabled":Z
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "supportsSwitchingToNextInputMethod":Z
    .restart local v7    # "inlineSuggestionsEnabled":Z
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_5
    move-exception v0

    move/from16 v18, v6

    move/from16 v22, v7

    move-object/from16 v25, v11

    move/from16 v5, v19

    .end local v6    # "supportsSwitchingToNextInputMethod":Z
    .end local v7    # "inlineSuggestionsEnabled":Z
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "supportsSwitchingToNextInputMethod":Z
    .restart local v22    # "inlineSuggestionsEnabled":Z
    .restart local v25    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_5

    .line 213
    .end local v18    # "supportsSwitchingToNextInputMethod":Z
    .end local v19    # "isAuxIme":Z
    .end local v22    # "inlineSuggestionsEnabled":Z
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    .local v5, "isAuxIme":Z
    .restart local v6    # "supportsSwitchingToNextInputMethod":Z
    .restart local v7    # "inlineSuggestionsEnabled":Z
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :cond_d
    move/from16 v19, v5

    move/from16 v18, v6

    move/from16 v22, v7

    move-object/from16 v25, v11

    .end local v5    # "isAuxIme":Z
    .end local v6    # "supportsSwitchingToNextInputMethod":Z
    .end local v7    # "inlineSuggestionsEnabled":Z
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "supportsSwitchingToNextInputMethod":Z
    .restart local v19    # "isAuxIme":Z
    .restart local v22    # "inlineSuggestionsEnabled":Z
    .restart local v25    # "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No android.view.im meta-data"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    .end local v8    # "supportsInlineSuggestionsWithTouchExploration":Z
    .end local v9    # "suppressesSpellChecker":Z
    .end local v10    # "showInInputMethodPicker":Z
    .end local v12    # "settingsActivityComponent":Ljava/lang/String;
    .end local v13    # "isDefaultResId":I
    .end local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v15    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v18    # "supportsSwitchingToNextInputMethod":Z
    .end local v19    # "isAuxIme":Z
    .end local v22    # "inlineSuggestionsEnabled":Z
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Landroid/view/inputmethod/InputMethodInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "service":Landroid/content/pm/ResolveInfo;
    .end local p3    # "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    throw v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 302
    .restart local v4    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v8    # "supportsInlineSuggestionsWithTouchExploration":Z
    .restart local v9    # "suppressesSpellChecker":Z
    .restart local v10    # "showInInputMethodPicker":Z
    .restart local v12    # "settingsActivityComponent":Ljava/lang/String;
    .restart local v13    # "isDefaultResId":I
    .restart local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v15    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v18    # "supportsSwitchingToNextInputMethod":Z
    .restart local v19    # "isAuxIme":Z
    .restart local v22    # "inlineSuggestionsEnabled":Z
    .restart local v25    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "service":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_6
    move-exception v0

    move/from16 v6, v18

    move/from16 v5, v19

    move/from16 v7, v22

    goto :goto_6

    .line 298
    :catch_6
    move-exception v0

    move/from16 v6, v18

    move/from16 v5, v19

    move/from16 v7, v22

    goto :goto_5

    .line 302
    .end local v18    # "supportsSwitchingToNextInputMethod":Z
    .end local v19    # "isAuxIme":Z
    .end local v22    # "inlineSuggestionsEnabled":Z
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "isAuxIme":Z
    .restart local v6    # "supportsSwitchingToNextInputMethod":Z
    .restart local v7    # "inlineSuggestionsEnabled":Z
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catchall_7
    move-exception v0

    move/from16 v19, v5

    move/from16 v18, v6

    move/from16 v22, v7

    move-object/from16 v25, v11

    .end local v5    # "isAuxIme":Z
    .end local v6    # "supportsSwitchingToNextInputMethod":Z
    .end local v7    # "inlineSuggestionsEnabled":Z
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "supportsSwitchingToNextInputMethod":Z
    .restart local v19    # "isAuxIme":Z
    .restart local v22    # "inlineSuggestionsEnabled":Z
    .restart local v25    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_6

    .line 298
    .end local v18    # "supportsSwitchingToNextInputMethod":Z
    .end local v19    # "isAuxIme":Z
    .end local v22    # "inlineSuggestionsEnabled":Z
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "isAuxIme":Z
    .restart local v6    # "supportsSwitchingToNextInputMethod":Z
    .restart local v7    # "inlineSuggestionsEnabled":Z
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_7
    move-exception v0

    move/from16 v19, v5

    move/from16 v18, v6

    move/from16 v22, v7

    move-object/from16 v25, v11

    .line 299
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v25    # "pm":Landroid/content/pm/PackageManager;
    :goto_5
    :try_start_9
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "e":Ljava/lang/Exception;
    .local v16, "e":Ljava/lang/Exception;
    const-string v0, "Unable to create context for: "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v11, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    .end local v5    # "isAuxIme":Z
    .end local v6    # "supportsSwitchingToNextInputMethod":Z
    .end local v7    # "inlineSuggestionsEnabled":Z
    .end local v8    # "supportsInlineSuggestionsWithTouchExploration":Z
    .end local v9    # "suppressesSpellChecker":Z
    .end local v10    # "showInInputMethodPicker":Z
    .end local v12    # "settingsActivityComponent":Ljava/lang/String;
    .end local v13    # "isDefaultResId":I
    .end local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v15    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v25    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Landroid/view/inputmethod/InputMethodInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "service":Landroid/content/pm/ResolveInfo;
    .end local p3    # "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 302
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v4    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v5    # "isAuxIme":Z
    .restart local v6    # "supportsSwitchingToNextInputMethod":Z
    .restart local v7    # "inlineSuggestionsEnabled":Z
    .restart local v8    # "supportsInlineSuggestionsWithTouchExploration":Z
    .restart local v9    # "suppressesSpellChecker":Z
    .restart local v10    # "showInInputMethodPicker":Z
    .restart local v12    # "settingsActivityComponent":Ljava/lang/String;
    .restart local v13    # "isDefaultResId":I
    .restart local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v15    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v25    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "this":Landroid/view/inputmethod/InputMethodInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "service":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_8
    move-exception v0

    :goto_6
    if-eqz v14, :cond_e

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    .line 303
    :cond_e
    throw v0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZ)V
    .locals 13
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "isAuxIme"    # Z
    .param p3, "settingsActivity"    # Ljava/lang/String;
    .param p5, "isDefaultResId"    # I
    .param p6, "forceDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;IZ)V"
        }
    .end annotation

    .line 388
    .local p4, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v12}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZZZZIZZ)V

    .line 393
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZZZ)V
    .locals 13
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "isAuxIme"    # Z
    .param p3, "settingsActivity"    # Ljava/lang/String;
    .param p5, "isDefaultResId"    # I
    .param p6, "forceDefault"    # Z
    .param p7, "supportsSwitchingToNextInputMethod"    # Z
    .param p8, "isVrOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;IZZZ)V"
        }
    .end annotation

    .line 402
    .local p4, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v12}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZZZZIZZ)V

    .line 406
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZZZZIZZ)V
    .locals 14
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "isAuxIme"    # Z
    .param p3, "settingsActivity"    # Ljava/lang/String;
    .param p5, "isDefaultResId"    # I
    .param p6, "forceDefault"    # Z
    .param p7, "supportsSwitchingToNextInputMethod"    # Z
    .param p8, "inlineSuggestionsEnabled"    # Z
    .param p9, "isVrOnly"    # Z
    .param p10, "handledConfigChanges"    # I
    .param p11, "supportsStylusHandwriting"    # Z
    .param p12, "supportsInlineSuggestionsWithTouchExploration"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;IZZZZIZZ)V"
        }
    .end annotation

    .line 416
    .local p4, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 418
    .local v2, "si":Landroid/content/pm/ServiceInfo;
    iput-object v1, v0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 419
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    .line 420
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 421
    move/from16 v4, p5

    iput v4, v0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    .line 422
    move/from16 v5, p2

    iput-boolean v5, v0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    .line 423
    new-instance v6, Landroid/view/inputmethod/InputMethodSubtypeArray;

    move-object/from16 v7, p4

    invoke-direct {v6, v7}, Landroid/view/inputmethod/InputMethodSubtypeArray;-><init>(Ljava/util/List;)V

    iput-object v6, v0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    .line 424
    move/from16 v6, p6

    iput-boolean v6, v0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    .line 425
    move/from16 v8, p7

    iput-boolean v8, v0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    .line 426
    move/from16 v9, p8

    iput-boolean v9, v0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    .line 427
    move/from16 v10, p12

    iput-boolean v10, v0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    .line 429
    const/4 v11, 0x0

    iput-boolean v11, v0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    .line 430
    const/4 v11, 0x1

    iput-boolean v11, v0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    .line 431
    move/from16 v11, p9

    iput-boolean v11, v0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    .line 432
    move/from16 v12, p10

    iput v12, v0, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    .line 433
    move/from16 v13, p11

    iput-boolean v13, v0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    .line 434
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    .line 345
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 346
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-direct {v0, p1}, Landroid/view/inputmethod/InputMethodSubtypeArray;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    .line 349
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    .line 350
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "settingsActivity"    # Ljava/lang/String;

    .line 357
    invoke-static/range {p1 .. p3}, Landroid/view/inputmethod/InputMethodInfo;->buildFakeResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v12}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZZZZIZZ)V

    .line 363
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "settingsActivity"    # Ljava/lang/String;
    .param p5, "handledConfigChanges"    # I

    .line 373
    invoke-static/range {p1 .. p3}, Landroid/view/inputmethod/InputMethodInfo;->buildFakeResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object/from16 v3, p4

    move/from16 v10, p5

    invoke-direct/range {v0 .. v12}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZZZZIZZ)V

    .line 379
    return-void
.end method

.method private static blacklist buildFakeResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .line 438
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 439
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/pm/ServiceInfo;

    invoke-direct {v1}, Landroid/content/pm/ServiceInfo;-><init>()V

    .line 440
    .local v1, "si":Landroid/content/pm/ServiceInfo;
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 441
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    iput-object p0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 442
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 443
    iput-object v2, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 444
    iput-boolean v3, v1, Landroid/content/pm/ServiceInfo;->enabled:Z

    .line 445
    iput-object p0, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 446
    iput-object p1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 447
    iput-boolean v3, v1, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 448
    iput-object p2, v1, Landroid/content/pm/ServiceInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 449
    iput-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 450
    return-object v0
.end method

.method public static greylist-max-o computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "service"    # Landroid/content/pm/ResolveInfo;

    .line 164
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 165
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 745
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSettingsActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsVrOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSupportsSwitchingToNextInputMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInlineSuggestionsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSupportsInlineSuggestionsWithTouchExploration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSuppressesSpellChecker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mShowInInputMethodPicker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSupportsStylusHandwriting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIsDefaultResId=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    .line 612
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 633
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 634
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 636
    :cond_1
    instance-of v1, p1, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v1, :cond_2

    return v0

    .line 638
    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 639
    .local v0, "obj":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getComponent()Landroid/content/ComponentName;
    .locals 3

    .line 490
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist getConfigChanges()I
    .locals 1

    .line 589
    iget v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    return v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 1

    .line 459
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIsDefaultResourceId()I
    .locals 1

    .line 558
    iget v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 466
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    .line 482
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public whitelist getServiceName()Ljava/lang/String;
    .locals 1

    .line 474
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSettingsActivity()Ljava/lang/String;
    .locals 1

    .line 525
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1
    .param p1, "index"    # I

    .line 549
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->get(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSubtypeCount()I
    .locals 1

    .line 540
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtypeArray;->getCount()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 644
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist-max-o isAuxiliaryIme()Z
    .locals 1

    .line 659
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    return v0
.end method

.method public greylist isDefault(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 567
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    if-eqz v0, :cond_0

    .line 568
    const/4 v0, 0x1

    return v0

    .line 571
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getIsDefaultResourceId()I

    move-result v1

    if-nez v1, :cond_1

    .line 572
    return v0

    .line 574
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 575
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getIsDefaultResourceId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 576
    .end local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 577
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public blacklist isInlineSuggestionsEnabled()Z
    .locals 1

    .line 675
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    return v0
.end method

.method public blacklist isSystem()Z
    .locals 2

    .line 652
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist-max-o isVrOnly()Z
    .locals 1

    .line 533
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    return v0
.end method

.method public whitelist loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 511
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 501
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist shouldShowInInputMethodPicker()Z
    .locals 1

    .line 700
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    return v0
.end method

.method public blacklist supportsInlineSuggestionsWithTouchExploration()Z
    .locals 1

    .line 684
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    return v0
.end method

.method public whitelist supportsStylusHandwriting()Z
    .locals 1

    .line 597
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    return v0
.end method

.method public greylist-max-o supportsSwitchingToNextInputMethod()Z
    .locals 1

    .line 667
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    return v0
.end method

.method public whitelist suppressesSpellChecker()Z
    .locals 1

    .line 691
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputMethodInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 711
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 713
    iget v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mInlineSuggestionsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsInlineSuggestionsWithTouchExploration:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 718
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSuppressesSpellChecker:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 719
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mShowInInputMethodPicker:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 720
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsVrOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 721
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 722
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->writeToParcel(Landroid/os/Parcel;)V

    .line 723
    iget v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mHandledConfigChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 724
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsStylusHandwriting:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 725
    return-void
.end method
