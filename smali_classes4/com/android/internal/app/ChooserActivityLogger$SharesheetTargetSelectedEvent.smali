.class public final enum Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;
.super Ljava/lang/Enum;
.source "ChooserActivityLogger.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivityLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SharesheetTargetSelectedEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

.field public static final enum blacklist INVALID:Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

.field public static final enum blacklist SHARESHEET_APP_TARGET_SELECTED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

.field public static final enum blacklist SHARESHEET_COPY_TARGET_SELECTED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

.field public static final enum blacklist SHARESHEET_EDIT_TARGET_SELECTED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

.field public static final enum blacklist SHARESHEET_NEARBY_TARGET_SELECTED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

.field public static final enum blacklist SHARESHEET_SERVICE_TARGET_SELECTED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

.field public static final enum blacklist SHARESHEET_STANDARD_TARGET_SELECTED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;


# instance fields
.field private final blacklist mId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 126
    new-instance v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;->INVALID:Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    .line 127
    new-instance v1, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    const-string v3, "SHARESHEET_SERVICE_TARGET_SELECTED"

    const/4 v4, 0x1

    const/16 v5, 0xe8

    invoke-direct {v1, v3, v4, v5}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;->SHARESHEET_SERVICE_TARGET_SELECTED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    .line 129
    new-instance v3, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    const-string v5, "SHARESHEET_APP_TARGET_SELECTED"

    const/4 v6, 0x2

    const/16 v7, 0xe9

    invoke-direct {v3, v5, v6, v7}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;->SHARESHEET_APP_TARGET_SELECTED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    .line 131
    new-instance v5, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    const-string v7, "SHARESHEET_STANDARD_TARGET_SELECTED"

    const/4 v8, 0x3

    const/16 v9, 0xea

    invoke-direct {v5, v7, v8, v9}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;->SHARESHEET_STANDARD_TARGET_SELECTED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    .line 133
    new-instance v7, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    const-string v9, "SHARESHEET_COPY_TARGET_SELECTED"

    const/4 v10, 0x4

    const/16 v11, 0xeb

    invoke-direct {v7, v9, v10, v11}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;->SHARESHEET_COPY_TARGET_SELECTED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    .line 135
    new-instance v9, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    const-string v11, "SHARESHEET_NEARBY_TARGET_SELECTED"

    const/4 v12, 0x5

    const/16 v13, 0x272

    invoke-direct {v9, v11, v12, v13}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;->SHARESHEET_NEARBY_TARGET_SELECTED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    .line 137
    new-instance v11, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    const-string v13, "SHARESHEET_EDIT_TARGET_SELECTED"

    const/4 v14, 0x6

    const/16 v15, 0x29d

    invoke-direct {v11, v13, v14, v15}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;->SHARESHEET_EDIT_TARGET_SELECTED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    .line 125
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;->$VALUES:[Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 142
    iput p3, p0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;->mId:I

    .line 143
    return-void
.end method

.method public static blacklist fromTargetType(I)Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;
    .locals 1
    .param p0, "targetType"    # I

    .line 149
    packed-switch p0, :pswitch_data_0

    .line 163
    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;->INVALID:Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    return-object v0

    .line 161
    :pswitch_0
    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;->SHARESHEET_EDIT_TARGET_SELECTED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    return-object v0

    .line 159
    :pswitch_1
    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;->SHARESHEET_NEARBY_TARGET_SELECTED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    return-object v0

    .line 157
    :pswitch_2
    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;->SHARESHEET_COPY_TARGET_SELECTED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    return-object v0

    .line 155
    :pswitch_3
    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;->SHARESHEET_STANDARD_TARGET_SELECTED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    return-object v0

    .line 153
    :pswitch_4
    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;->SHARESHEET_APP_TARGET_SELECTED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    return-object v0

    .line 151
    :pswitch_5
    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;->SHARESHEET_SERVICE_TARGET_SELECTED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 125
    const-class v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;
    .locals 1

    .line 125
    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;->$VALUES:[Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    invoke-virtual {v0}, [Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;

    return-object v0
.end method


# virtual methods
.method public blacklist getId()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;->mId:I

    return v0
.end method
