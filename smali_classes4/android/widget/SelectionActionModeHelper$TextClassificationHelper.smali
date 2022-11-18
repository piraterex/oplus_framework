.class final Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextClassificationHelper"
.end annotation


# static fields
.field private static final blacklist TRIM_DELTA_UPPER_BOUND:I = 0xf0


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDefaultLocales:Landroid/os/LocaleList;

.field private blacklist mInitialized:Z

.field private greylist-max-o mLastClassificationLocales:Landroid/os/LocaleList;

.field private greylist-max-o mLastClassificationResult:Landroid/widget/SelectionActionModeHelper$SelectionResult;

.field private greylist-max-o mLastClassificationSelectionEnd:I

.field private greylist-max-o mLastClassificationSelectionStart:I

.field private greylist-max-o mLastClassificationText:Ljava/lang/CharSequence;

.field private greylist-max-o mRelativeEnd:I

.field private greylist-max-o mRelativeStart:I

.field private greylist-max-o mSelectionEnd:I

.field private greylist-max-o mSelectionStart:I

.field private greylist-max-o mText:Ljava/lang/String;

.field private greylist-max-o mTextClassifier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/textclassifier/TextClassifier;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTrimStart:I

.field private greylist-max-o mTrimmedText:Ljava/lang/CharSequence;

.field private final blacklist mViewConfiguration:Landroid/view/ViewConfiguration;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;Ljava/util/function/Supplier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "selectionStart"    # I
    .param p5, "selectionEnd"    # I
    .param p6, "locales"    # Landroid/os/LocaleList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/textclassifier/TextClassifier;",
            ">;",
            "Ljava/lang/CharSequence;",
            "II",
            "Landroid/os/LocaleList;",
            ")V"
        }
    .end annotation

    .line 1105
    .local p2, "textClassifier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/textclassifier/TextClassifier;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1106
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->init(Ljava/util/function/Supplier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V

    .line 1107
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mContext:Landroid/content/Context;

    .line 1108
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 1109
    return-void
.end method

.method private greylist-max-o isDarkLaunchEnabled()Z
    .locals 1

    .line 1176
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings(Landroid/content/Context;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->isModelDarkLaunchEnabled()Z

    move-result v0

    return v0
.end method

.method private greylist-max-o performClassification(Landroid/view/textclassifier/TextSelection;)Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .locals 5
    .param p1, "selection"    # Landroid/view/textclassifier/TextSelection;

    .line 1180
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationText:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationSelectionStart:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationSelectionEnd:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mDefaultLocales:Landroid/os/LocaleList;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationLocales:Landroid/os/LocaleList;

    .line 1183
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1185
    :cond_0
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationText:Ljava/lang/CharSequence;

    .line 1186
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iput v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationSelectionStart:I

    .line 1187
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    iput v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationSelectionEnd:I

    .line 1188
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mDefaultLocales:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationLocales:Landroid/os/LocaleList;

    .line 1190
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->trimText()V

    .line 1192
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/util/Linkify;->containsUnsupportedCharacters(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1194
    const v0, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "116321860"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1195
    sget-object v0, Landroid/view/textclassifier/TextClassification;->EMPTY:Landroid/view/textclassifier/TextClassification;

    .local v0, "classification":Landroid/view/textclassifier/TextClassification;
    goto :goto_0

    .line 1196
    .end local v0    # "classification":Landroid/view/textclassifier/TextClassification;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1197
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    .restart local v0    # "classification":Landroid/view/textclassifier/TextClassification;
    goto :goto_0

    .line 1198
    .end local v0    # "classification":Landroid/view/textclassifier/TextClassification;
    :cond_2
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_3

    .line 1200
    new-instance v0, Landroid/view/textclassifier/TextClassification$Request$Builder;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimmedText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeStart:I

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeEnd:I

    invoke-direct {v0, v1, v2, v3}, Landroid/view/textclassifier/TextClassification$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mDefaultLocales:Landroid/os/LocaleList;

    .line 1203
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassification$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification$Request$Builder;

    move-result-object v0

    .line 1204
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification$Request$Builder;->build()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object v0

    .line 1205
    .local v0, "request":Landroid/view/textclassifier/TextClassification$Request;
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTextClassifier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v1, v0}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    .line 1206
    .local v0, "classification":Landroid/view/textclassifier/TextClassification;
    goto :goto_0

    .line 1208
    .end local v0    # "classification":Landroid/view/textclassifier/TextClassification;
    :cond_3
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTextClassifier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifier;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimmedText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeStart:I

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeEnd:I

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mDefaultLocales:Landroid/os/LocaleList;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/textclassifier/TextClassifier;->classifyText(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    .line 1211
    .restart local v0    # "classification":Landroid/view/textclassifier/TextClassification;
    :goto_0
    new-instance v1, Landroid/widget/SelectionActionModeHelper$SelectionResult;

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    invoke-direct {v1, v2, v3, v0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;-><init>(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V

    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationResult:Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 1215
    .end local v0    # "classification":Landroid/view/textclassifier/TextClassification;
    :cond_4
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationResult:Landroid/widget/SelectionActionModeHelper$SelectionResult;

    return-object v0
.end method

.method private greylist-max-o trimText()V
    .locals 4

    .line 1219
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mContext:Landroid/content/Context;

    .line 1220
    invoke-static {v0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings(Landroid/content/Context;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->getSmartSelectionTrimDelta()I

    move-result v0

    .line 1219
    const/16 v1, 0xf0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1222
    .local v0, "trimDelta":I
    iget v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    .line 1223
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1224
    .local v1, "referenceEnd":I
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimmedText:Ljava/lang/CharSequence;

    .line 1225
    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeStart:I

    .line 1226
    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeEnd:I

    .line 1227
    return-void
.end method


# virtual methods
.method public greylist-max-o classifyText()Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .locals 1

    .line 1125
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mInitialized:Z

    .line 1126
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->performClassification(Landroid/view/textclassifier/TextSelection;)Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getOriginalSelection()Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .locals 4

    .line 1157
    new-instance v0, Landroid/widget/SelectionActionModeHelper$SelectionResult;

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/widget/SelectionActionModeHelper$SelectionResult;-><init>(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V

    return-object v0
.end method

.method public greylist-max-o getTimeoutDuration()I
    .locals 1

    .line 1164
    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getSmartSelectionInitializedTimeout()I

    move-result v0

    return v0

    .line 1171
    :cond_0
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getSmartSelectionInitializingTimeout()I

    move-result v0

    return v0
.end method

.method public greylist-max-o init(Ljava/util/function/Supplier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V
    .locals 1
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "selectionStart"    # I
    .param p4, "selectionEnd"    # I
    .param p5, "locales"    # Landroid/os/LocaleList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/textclassifier/TextClassifier;",
            ">;",
            "Ljava/lang/CharSequence;",
            "II",
            "Landroid/os/LocaleList;",
            ")V"
        }
    .end annotation

    .line 1114
    .local p1, "textClassifier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/textclassifier/TextClassifier;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTextClassifier:Ljava/util/function/Supplier;

    .line 1115
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    .line 1116
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationText:Ljava/lang/CharSequence;

    .line 1117
    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1118
    iput p3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    .line 1119
    iput p4, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    .line 1120
    iput-object p5, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mDefaultLocales:Landroid/os/LocaleList;

    .line 1121
    return-void
.end method

.method public greylist-max-o suggestSelection()Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .locals 5

    .line 1131
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mInitialized:Z

    .line 1132
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->trimText()V

    .line 1134
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 1135
    new-instance v1, Landroid/view/textclassifier/TextSelection$Request$Builder;

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimmedText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeStart:I

    iget v4, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeEnd:I

    invoke-direct {v1, v2, v3, v4}, Landroid/view/textclassifier/TextSelection$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mDefaultLocales:Landroid/os/LocaleList;

    .line 1137
    invoke-virtual {v1, v2}, Landroid/view/textclassifier/TextSelection$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection$Request$Builder;

    move-result-object v1

    .line 1138
    invoke-virtual {v1, v0}, Landroid/view/textclassifier/TextSelection$Request$Builder;->setDarkLaunchAllowed(Z)Landroid/view/textclassifier/TextSelection$Request$Builder;

    move-result-object v1

    .line 1139
    invoke-virtual {v1, v0}, Landroid/view/textclassifier/TextSelection$Request$Builder;->setIncludeTextClassification(Z)Landroid/view/textclassifier/TextSelection$Request$Builder;

    move-result-object v0

    .line 1140
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection$Request$Builder;->build()Landroid/view/textclassifier/TextSelection$Request;

    move-result-object v0

    .line 1141
    .local v0, "request":Landroid/view/textclassifier/TextSelection$Request;
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTextClassifier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v1, v0}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    .line 1142
    .local v0, "selection":Landroid/view/textclassifier/TextSelection;
    goto :goto_0

    .line 1144
    .end local v0    # "selection":Landroid/view/textclassifier/TextSelection;
    :cond_0
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTextClassifier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifier;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimmedText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeStart:I

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeEnd:I

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mDefaultLocales:Landroid/os/LocaleList;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    .line 1148
    .restart local v0    # "selection":Landroid/view/textclassifier/TextSelection;
    :goto_0
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->isDarkLaunchEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1149
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection;->getSelectionStartIndex()I

    move-result v2

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    .line 1150
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    .line 1151
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection;->getSelectionEndIndex()I

    move-result v2

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    add-int/2addr v2, v3

    .line 1150
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    .line 1153
    :cond_1
    invoke-direct {p0, v0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->performClassification(Landroid/view/textclassifier/TextSelection;)Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v1

    return-object v1
.end method
