.class final enum Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;
.super Ljava/lang/Enum;
.source "AppLocaleStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LocaleStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

.field public static final enum blacklist ASSET_LOCALE_IS_EMPTY:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

.field public static final enum blacklist GET_SUPPORTED_LANGUAGE_FROM_ASSET:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

.field public static final enum blacklist GET_SUPPORTED_LANGUAGE_FROM_LOCAL_CONFIG:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

.field public static final enum blacklist NO_SUPPORTED_LANGUAGE_IN_APP:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

.field public static final enum blacklist UNKNOWN_FAILURE:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 153
    new-instance v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    const-string v1, "UNKNOWN_FAILURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->UNKNOWN_FAILURE:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    .line 154
    new-instance v1, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    const-string v3, "NO_SUPPORTED_LANGUAGE_IN_APP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->NO_SUPPORTED_LANGUAGE_IN_APP:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    .line 155
    new-instance v3, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    const-string v5, "ASSET_LOCALE_IS_EMPTY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->ASSET_LOCALE_IS_EMPTY:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    .line 156
    new-instance v5, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    const-string v7, "GET_SUPPORTED_LANGUAGE_FROM_LOCAL_CONFIG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->GET_SUPPORTED_LANGUAGE_FROM_LOCAL_CONFIG:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    .line 157
    new-instance v7, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    const-string v9, "GET_SUPPORTED_LANGUAGE_FROM_ASSET"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->GET_SUPPORTED_LANGUAGE_FROM_ASSET:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    .line 152
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->$VALUES:[Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 152
    const-class v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;
    .locals 1

    .line 152
    sget-object v0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->$VALUES:[Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    invoke-virtual {v0}, [Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    return-object v0
.end method
