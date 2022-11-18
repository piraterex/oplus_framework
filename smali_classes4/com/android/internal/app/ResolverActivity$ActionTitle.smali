.class final enum Lcom/android/internal/app/ResolverActivity$ActionTitle;
.super Ljava/lang/Enum;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActionTitle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/app/ResolverActivity$ActionTitle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final blacklist BROWSABLE_APP_TITLE_RES:I = 0x104099a

.field public static final blacklist BROWSABLE_HOST_APP_TITLE_RES:I = 0x1040998

.field public static final blacklist BROWSABLE_HOST_TITLE_RES:I = 0x1040997

.field public static final blacklist BROWSABLE_TITLE_RES:I = 0x1040999

.field public static final enum blacklist CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum blacklist DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum blacklist EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum blacklist HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum blacklist SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum blacklist SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum blacklist SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum blacklist VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;


# instance fields
.field public final blacklist action:Ljava/lang/String;

.field public final blacklist labelRes:I

.field public final blacklist namedTitleRes:I

.field public final blacklist titleRes:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 22

    .line 245
    new-instance v7, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v1, "VIEW"

    const/4 v2, 0x0

    const-string v3, "android.intent.action.VIEW"

    const v4, 0x10409a1

    const v5, 0x10409a3

    const v6, 0x10409a2

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v7, Lcom/android/internal/app/ResolverActivity$ActionTitle;->VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 249
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v9, "EDIT"

    const/4 v10, 0x1

    const-string v11, "android.intent.action.EDIT"

    const v12, 0x104098b

    const v13, 0x104098d

    const v14, 0x104098c

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 253
    new-instance v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v16, "SEND"

    const/16 v17, 0x2

    const-string v18, "android.intent.action.SEND"

    const v19, 0x104099b

    const v20, 0x104099d

    const v21, 0x104099c

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 257
    new-instance v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v9, "SENDTO"

    const/4 v10, 0x3

    const-string v11, "android.intent.action.SENDTO"

    const v12, 0x104099e

    const v13, 0x10409a0

    const v14, 0x104099f

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 261
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v16, "SEND_MULTIPLE"

    const/16 v17, 0x4

    const-string v18, "android.intent.action.SEND_MULTIPLE"

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 265
    new-instance v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v9, "CAPTURE_IMAGE"

    const/4 v10, 0x5

    const-string v11, "android.media.action.IMAGE_CAPTURE"

    const v12, 0x1040994

    const v13, 0x1040996

    const v14, 0x1040995

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;->CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 269
    new-instance v5, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v16, "DEFAULT"

    const/16 v17, 0x6

    const/16 v18, 0x0

    const v19, 0x1040988

    const v20, 0x104098a

    const v21, 0x1040989

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v5, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 273
    new-instance v6, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v9, "HOME"

    const/4 v10, 0x7

    const-string v11, "android.intent.action.MAIN"

    const v12, 0x1040991

    const v13, 0x1040993

    const v14, 0x1040992

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v6, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 244
    const/16 v8, 0x8

    new-array v8, v8, [Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v7, 0x1

    aput-object v0, v8, v7

    const/4 v0, 0x2

    aput-object v1, v8, v0

    const/4 v0, 0x3

    aput-object v2, v8, v0

    const/4 v0, 0x4

    aput-object v3, v8, v0

    const/4 v0, 0x5

    aput-object v4, v8, v0

    const/4 v0, 0x6

    aput-object v5, v8, v0

    const/4 v0, 0x7

    aput-object v6, v8, v0

    sput-object v8, Lcom/android/internal/app/ResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .locals 0
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "titleRes"    # I
    .param p5, "namedTitleRes"    # I
    .param p6, "labelRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .line 293
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 294
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->action:Ljava/lang/String;

    .line 295
    iput p4, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    .line 296
    iput p5, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    .line 297
    iput p6, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->labelRes:I

    .line 298
    return-void
.end method

.method public static blacklist forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .locals 5
    .param p0, "action"    # Ljava/lang/String;

    .line 301
    invoke-static {}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 302
    .local v3, "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    sget-object v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-eq v3, v4, :cond_0

    if-eqz p0, :cond_0

    iget-object v4, v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->action:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    return-object v3

    .line 301
    .end local v3    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    :cond_1
    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 244
    const-class v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .locals 1

    .line 244
    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    invoke-virtual {v0}, [Lcom/android/internal/app/ResolverActivity$ActionTitle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object v0
.end method
