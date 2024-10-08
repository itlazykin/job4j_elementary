package ru.job4j.io;

import org.junit.Test;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.MatcherAssert.assertThat;

public class Task21Test {
    @Test
    public void shouldOutputFullNameAndPhoneInFrame() {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        System.setOut(new PrintStream(out));
        Task21.main(null);
        String expected = "************************" + System.lineSeparator()
                + "* Фамилия Имя Отчество *" + System.lineSeparator()
                + "* +7(938) 123-45-67    *" + System.lineSeparator()
                + "************************";
        assertThat(out.toString(), is(expected));
    }
}