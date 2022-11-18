.class final enum Landroid/widget/SpellChecker$RemoveReason;
.super Ljava/lang/Enum;
.source "SpellChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpellChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RemoveReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/widget/SpellChecker$RemoveReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/widget/SpellChecker$RemoveReason;

.field public static final enum blacklist OBSOLETE:Landroid/widget/SpellChecker$RemoveReason;

.field public static final enum blacklist REPLACE:Landroid/widget/SpellChecker$RemoveReason;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 441
    new-instance v0, Landroid/widget/SpellChecker$RemoveReason;

    const-string v1, "REPLACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/SpellChecker$RemoveReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/SpellChecker$RemoveReason;->REPLACE:Landroid/widget/SpellChecker$RemoveReason;

    .line 446
    new-instance v1, Landroid/widget/SpellChecker$RemoveReason;

    const-string v3, "OBSOLETE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/widget/SpellChecker$RemoveReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/widget/SpellChecker$RemoveReason;->OBSOLETE:Landroid/widget/SpellChecker$RemoveReason;

    .line 437
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/widget/SpellChecker$RemoveReason;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Landroid/widget/SpellChecker$RemoveReason;->$VALUES:[Landroid/widget/SpellChecker$RemoveReason;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 437
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/widget/SpellChecker$RemoveReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 437
    const-class v0, Landroid/widget/SpellChecker$RemoveReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/SpellChecker$RemoveReason;

    return-object v0
.end method

.method public static blacklist values()[Landroid/widget/SpellChecker$RemoveReason;
    .locals 1

    .line 437
    sget-object v0, Landroid/widget/SpellChecker$RemoveReason;->$VALUES:[Landroid/widget/SpellChecker$RemoveReason;

    invoke-virtual {v0}, [Landroid/widget/SpellChecker$RemoveReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/SpellChecker$RemoveReason;

    return-object v0
.end method
