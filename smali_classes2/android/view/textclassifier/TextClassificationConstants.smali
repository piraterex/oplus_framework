.class public final Landroid/view/textclassifier/TextClassificationConstants;
.super Ljava/lang/Object;
.source "TextClassificationConstants.java"


# static fields
.field private static final blacklist DEFAULT_TEXT_CLASSIFIER_SERVICE_PACKAGE_OVERRIDE:Ljava/lang/String;

.field static final greylist-max-o GENERATE_LINKS_MAX_TEXT_LENGTH:Ljava/lang/String; = "generate_links_max_text_length"

.field private static final greylist-max-o GENERATE_LINKS_MAX_TEXT_LENGTH_DEFAULT:I = 0x186a0

.field static final greylist-max-o LOCAL_TEXT_CLASSIFIER_ENABLED:Ljava/lang/String; = "local_textclassifier_enabled"

.field private static final greylist-max-o LOCAL_TEXT_CLASSIFIER_ENABLED_DEFAULT:Z = true

.field private static final greylist-max-o MODEL_DARK_LAUNCH_ENABLED:Ljava/lang/String; = "model_dark_launch_enabled"

.field private static final greylist-max-o MODEL_DARK_LAUNCH_ENABLED_DEFAULT:Z = false

.field private static final greylist-max-o SMART_LINKIFY_ENABLED:Ljava/lang/String; = "smart_linkify_enabled"

.field private static final greylist-max-o SMART_LINKIFY_ENABLED_DEFAULT:Z = true

.field private static final greylist-max-o SMART_SELECTION_ENABLED:Ljava/lang/String; = "smart_selection_enabled"

.field private static final greylist-max-o SMART_SELECTION_ENABLED_DEFAULT:Z = true

.field private static final blacklist SMART_SELECTION_TRIM_DELTA:Ljava/lang/String; = "smart_selection_trim_delta"

.field private static final blacklist SMART_SELECTION_TRIM_DELTA_DEFAULT:I = 0x78

.field private static final greylist-max-o SMART_SELECT_ANIMATION_ENABLED:Ljava/lang/String; = "smart_select_animation_enabled"

.field private static final greylist-max-o SMART_SELECT_ANIMATION_ENABLED_DEFAULT:Z = true

.field private static final greylist-max-o SMART_TEXT_SHARE_ENABLED:Ljava/lang/String; = "smart_text_share_enabled"

.field private static final greylist-max-o SMART_TEXT_SHARE_ENABLED_DEFAULT:Z = true

.field static final blacklist SYSTEM_TEXT_CLASSIFIER_API_TIMEOUT_IN_SECOND:Ljava/lang/String; = "system_textclassifier_api_timeout_in_second"

.field private static final blacklist SYSTEM_TEXT_CLASSIFIER_API_TIMEOUT_IN_SECOND_DEFAULT:J = 0x3cL

.field static final greylist-max-o SYSTEM_TEXT_CLASSIFIER_ENABLED:Ljava/lang/String; = "system_textclassifier_enabled"

.field private static final greylist-max-o SYSTEM_TEXT_CLASSIFIER_ENABLED_DEFAULT:Z = true

.field static final blacklist TEXT_CLASSIFIER_SERVICE_PACKAGE_OVERRIDE:Ljava/lang/String; = "textclassifier_service_package_override"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 100
    const/4 v0, 0x0

    sput-object v0, Landroid/view/textclassifier/TextClassificationConstants;->DEFAULT_TEXT_CLASSIFIER_SERVICE_PACKAGE_OVERRIDE:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 173
    const-string v0, "TextClassificationConstants:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 175
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getGenerateLinksMaxTextLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "generate_links_max_text_length"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 176
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isLocalTextClassifierEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "local_textclassifier_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 177
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isModelDarkLaunchEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "model_dark_launch_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 178
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartLinkifyEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "smart_linkify_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 179
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartSelectionAnimationEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "smart_select_animation_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 180
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartSelectionEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "smart_selection_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 181
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartTextShareEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "smart_text_share_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 182
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isSystemTextClassifierEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "system_textclassifier_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 183
    nop

    .line 184
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getTextClassifierServicePackageOverride()Ljava/lang/String;

    move-result-object v0

    .line 183
    const-string v1, "textclassifier_service_package_override"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 185
    nop

    .line 186
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getSystemTextClassifierApiTimeoutInSecond()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 185
    const-string v1, "system_textclassifier_api_timeout_in_second"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 187
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getSmartSelectionTrimDelta()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "smart_selection_trim_delta"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 188
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 189
    return-void
.end method

.method public greylist-max-o getGenerateLinksMaxTextLength()I
    .locals 3

    .line 156
    const-string v0, "textclassifier"

    const-string v1, "generate_links_max_text_length"

    const v2, 0x186a0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist getSmartSelectionTrimDelta()I
    .locals 3

    .line 167
    const-string v0, "textclassifier"

    const-string v1, "smart_selection_trim_delta"

    const/16 v2, 0x78

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist getSystemTextClassifierApiTimeoutInSecond()J
    .locals 4

    .line 161
    const-string v0, "textclassifier"

    const-string v1, "system_textclassifier_api_timeout_in_second"

    const-wide/16 v2, 0x3c

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getTextClassifierServicePackageOverride()Ljava/lang/String;
    .locals 3

    .line 114
    sget-object v0, Landroid/view/textclassifier/TextClassificationConstants;->DEFAULT_TEXT_CLASSIFIER_SERVICE_PACKAGE_OVERRIDE:Ljava/lang/String;

    const-string v1, "textclassifier"

    const-string v2, "textclassifier_service_package_override"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o isLocalTextClassifierEnabled()Z
    .locals 3

    .line 120
    const-string v0, "textclassifier"

    const-string v1, "local_textclassifier_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isModelDarkLaunchEnabled()Z
    .locals 3

    .line 131
    const-string v0, "textclassifier"

    const-string v1, "model_dark_launch_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isSmartLinkifyEnabled()Z
    .locals 3

    .line 146
    const-string v0, "textclassifier"

    const-string v1, "smart_linkify_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isSmartSelectionAnimationEnabled()Z
    .locals 3

    .line 151
    const-string v0, "textclassifier"

    const-string v1, "smart_select_animation_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isSmartSelectionEnabled()Z
    .locals 3

    .line 136
    const-string v0, "textclassifier"

    const-string v1, "smart_selection_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isSmartTextShareEnabled()Z
    .locals 3

    .line 141
    const-string v0, "textclassifier"

    const-string v1, "smart_text_share_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isSystemTextClassifierEnabled()Z
    .locals 3

    .line 125
    const-string v0, "textclassifier"

    const-string v1, "system_textclassifier_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
