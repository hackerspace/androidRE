package cz.base48.myapplication;

public final class BuildConfig {
    public static final String APPLICATION_ID = "cz.base48.myapplication";
    public static final String BUILD_TYPE = "debug";
    public static final boolean DEBUG;
    public static final String FLAVOR = "";
    public static final int VERSION_CODE = 1;
    public static final String VERSION_NAME = "1.0";

    public BuildConfig() {
        BuildConfig buildConfig = this;
    }

    static {
        DEBUG = Boolean.parseBoolean("true");
    }
}